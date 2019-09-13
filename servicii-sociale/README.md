#### Harta Serviciilor Sociale Autorizate [![Travis build](https://travis-ci.org/gov-ithub/servicii-sociale.svg?branch=master)](https://travis-ci.org/gov-ithub/servicii-sociale)[![Slack Status](https://govitslack.herokuapp.com/badge.svg)](https://govitslack.herokuapp.com)

Vizualizarea si Filtrarea Serviciilor Sociale Autorizate din Romania de catre cetateni.

#### Obiective
- Evidența tuturor serviciilor
- Prezentarea unor statistici cantitative ( #infographics)

#### Pentru cine e platforma?
- Cetatenii care au nevoie de aceste servicii si de datele de contact ale furnizorilor

#### Tehnologii folosite
- [React](https://facebook.github.io/react/)
- [Jest](https://facebook.github.io/jest/)
- [npm](https://github.com/npm/npm)
- [Travis](https://travis-ci.org/)
- [RoR](http://rubyonrails.org/)  
- [Material Design Components](http://www.material-ui.com)  
Posibil să se schimbe în viitorul apropiat

#### Instalare
```
git clone https://github.com/gov-ithub/servicii-sociale.git
cd socent-sociale
npm install
```

#### Flow
Pentru a folosi Flow este necesară instalarea definițiilor pentru librăriile 3rd party.

```
./node_modules/flow-typed/dist/cli.js install // dependințe locale
./node_modules/flow-typed/dist/cli.js install jest@17 // jest vine cu CRA și trebuie instalate definițiile separat de restul
```

După ce se instalează toate definițiile, typechecker-ul Flow se poate rula cu `npm run-script flow` (prima rulare este mai înceată, următoarele sunt instante).

#### Teste
Rulează `yarn test`. `yarn test` rulează doar testele nou introduse, de la ultimul commit, by default, însă vă permite rularea tuturor testelor (you'll know what to do when you see it).

Ca și framework folosim [Jest](https://facebook.github.io/jest/). [Documentație mai completă >>](https://github.com/facebookincubator/create-react-app/blob/master/packages/react-scripts/template/README.md#running-tests)

#### Development

- `yarn flow`: Rulează typechecker-ul Flow
- `yarn start`: Servește aplicația pe portul 3000
- `yarn build`: Pregătește aplicația pentru deployment (include minification, bundling, etc)
- `yarn eject`: Elimină dependența de [create-react-app](https://github.com/facebookincubator/create-react-app/). Poate va fi necesar, dar până atunci please don't touch.

#### Pull Request cheat-sheet
- Ai un summary complet? Trebuie să fie clar: ce schimbare aduce diff-ul, cum ai testat, și în cazuri unde se fac schimbări majore, dacă e cazul, avem un revert plan?
- Ai scris teste pentru codul nou adăugat/modificat?
- Ai făcut un self review pe propriul diff urmărind [guidelines](https://github.com/gov-ithub/guidelines/blob/master/CODE_REVIEW.md)?

Dacă răspunsul e "da" pentru toate 3, procesul de code review ar trebui să fie destul de painless, nice work.

#### Pull Requests > Issues
Preferă pull request-uri peste issues unde e posibil, pull request-urile sunt primite cu brațele deschise oricând.

#### Cum poti intra in contact cu echipa?
Prin email catre cezar.neaga@ithub.gov.ro sau mai rapid pe [Slack](https://govithub.slack.com/messages/servicii-sociale/details/)

**Made with :heart: by [GovITHub](http://ithub.gov.ro)**
