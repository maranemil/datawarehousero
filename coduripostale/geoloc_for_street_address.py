#!/usr/bin/python
# -*- coding: utf-8  -*-

import csv
import simplejson as json
import overpy

bucuresti_area = str(2422090768)
overpass = overpy.Overpass()
debug = False


def fetch_street(street='Strada Vișana', area=bucuresti_area):
    q = ('[out:json][timeout:25];area(' + area +
         ')->.searchArea;(way["name"="' + street +
         '"]["highway"](area.searchArea););out body;>;out skel qt;')
    print q

    result = overpass.query(q)
    return result


def get_geoloc(street):
    total = [0, 0]
    nodes = street.nodes
    print 'nodes: ' + str(len(nodes)) + ' ways: ' + str(len(street.ways))
    for node in nodes:
        total[0] += node.lat
        total[1] += node.lon
    if len(nodes) != 0:
        return [x / len(nodes) for x in total], [[node.lat, node.lon] for node in nodes]
    return total, [[node.lat, node.lon] for node in nodes]


def strip_name_trailings(name):
    return name.split(',')[0]


def reverse_name_words(name):
    temp = name.split()
    temp.reverse()
    return ' '.join(temp)


def geoloc_for_streets():
    result = {}     # Structure:
    # key: Street name,
    # value: {'geoloc': [latitude, longitude], 'nodes': [(lat, long)]}
    with open('data/codp_B.csv', 'rb') as csvfile:
        reader = csv.reader(csvfile)
        reader.next()       # skip header
        i = 0
        for row in reader:
            i += 1
            if debug and i >= 45:     # for debug
                break
            art, name, num, cp, sect, city = row
            #print art + ' ' + name + ' ' + cp
            str_name = art + ' ' + name

            # Make request on overpass to get the street location
            # If the first try didn't work, try to switch the position of words (i.e.
            # Constantin Brâncuși instead of Brâncuși Constantin
            if str_name not in result:
                print 'Processing row ' + str(i) + '\n'
                name = strip_name_trailings(name)
                loc, nodes = get_geoloc(fetch_street(art + ' ' + name))
                if loc == [0, 0]:
                    name = reverse_name_words(name)
                    loc, nodes = get_geoloc(fetch_street(art + ' ' + name))
                result[str_name] = {'geoloc': loc, 'nodes': nodes}
                print str_name + ' ' + str(loc)
    return result

if __name__ == '__main__':
    #street = fetch_street()
    #loc, nodes = get_geoloc(street)
    #print loc, nodes

    print 'Getting locations for streets in Bucharest\n'

    locations = geoloc_for_streets()
    #print locations

    print '\nFinished successfully'
    print 'Writing result to data/geolocB.json'

    with open('data/geolocB.json', 'wb') as geolocfile:
        json.dump(locations, geolocfile, indent=4)
