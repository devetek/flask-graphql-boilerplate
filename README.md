# Butterfly

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

[prakasa1904](https://github.com/prakasa1904)

## References

- [Flask-sqlAlchemy](https://flask-sqlalchemy.palletsprojects.com/en/2.x/queries/)
- [Docker Centos 7](<https://github.com/NaturalHistoryMuseum/scratchpads2/wiki/Install-Docker-and-Docker-Compose-(Centos-7)>)
