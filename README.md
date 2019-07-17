# Butterfly

[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg?style=flat-square)](#contributors)

## Phylosophy

The Butterfly is an item purchasable at the Main Shop, under Weapons. However, it can only be completed with items from the Secret Shop.

## In Our World

Butterfly is python framework for [Devetek](http://devetek.com). Boilerplate including REST API, Graphql, gRPC.

## Available Services

### REST API:

- [account](https://github.com/devetek/Butterfly/tree/master/docs/account)
- [oauth](https://github.com/devetek/Butterfly/tree/master/docs/oauth)

## requirements

- Docker
- python >= 3.7.2

## Generate Database

Generate database using command line, after mysql engine up execute command below:

```sh
make createdb
```

## Running Development

Bootstrap development using docker is easier than others. How to do that ? follow command below:

```sh
make run-dev
```

docker only available for `http` protocol. For gRPC will join ASAP.

## Contributors

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore -->
<table>
  <tr>
    <td align="center"><a href="http://www.terpusat.com"><img src="https://avatars1.githubusercontent.com/u/6983524?v=4" width="100px;" alt="Prakasa"/><br /><sub><b>Prakasa</b></sub></a><br /><a href="#infra-prakasa1904" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a> <a href="https://github.com/devetek/Butterfly/commits?author=prakasa1904" title="Documentation">📖</a> <a href="https://github.com/devetek/Butterfly/commits?author=prakasa1904" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/arivin29"><img src="https://avatars0.githubusercontent.com/u/11455704?v=4" width="100px;" alt="Muh Arifin"/><br /><sub><b>Muh Arifin</b></sub></a><br /><a href="#question-arivin29" title="Answering Questions">💬</a> <a href="#business-arivin29" title="Business development">💼</a> <a href="#design-arivin29" title="Design">🎨</a></td>
  </tr>
</table>

<!-- ALL-CONTRIBUTORS-LIST:END -->

## References

- [Flask-sqlAlchemy](https://flask-sqlalchemy.palletsprojects.com/en/2.x/queries/)
- [Docker Centos 7](<https://github.com/NaturalHistoryMuseum/scratchpads2/wiki/Install-Docker-and-Docker-Compose-(Centos-7)>)

## Todo

- Create dashboard for user management: `yarn create react-app my-app`
- API to update status
- API to delete member
