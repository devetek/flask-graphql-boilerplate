# Python Flask Graphql Boilerplate

Python flask graphql boilerplate, to help Devetek python developer to deliver project with standard graphql endpoint 

## Prerequisite

- Python == 3.10.10

## Structure

```sh
root/
├── docker                          # Global docker configuration
├── config                          # Configuration file can be ini, yaml, json, yoml
├── scripts                         # External scripts, to interact with CI / CD
├── shared                          # Shared Interface, shared package for all application
      ├── helpers                   # Local shared helper
      ├── libraries                 # Local shared libraries
      ├── models                    # Local shared models / datasource (database / remote / etc)
├── cli                             # CLI Interface, helper to generate preset env pre graphql run
      ├── helpers                   # Local CLI helper
      ├── libraries                 # Local CLI libraries
      ├── modules                   # Modular CLI applications
├── gqlserver                       # graphql Interface, contains core of graphql instance
      ├── helpers                   # Local graphql helper
      ├── libraries                 # Local graphql libraries
      ├── resolvers                 # Modular graphql resolvers
```

## How To

### With Docker
To run with docker, follow steps below:

1. Run with default database, postgreSQL

```sh
make run
```

2. Run with custom database, can be pgql or mysql

```sh
make run DB=mysql
```

### Without Docker

To run without docker, you need install mysql or postgresql separately. Then follow steps below:

1. Install dependencies
```sh
make setup
```

2. Activate local package
```sh
source python_modules/bin/activate
```

3. Export variables. For environment variable DB, you have to determine what will be used, mysql OR pgql

```sh
export DB=mysql
export FLASK_APP=cli/flask
export FLASK_ENV=development
```

4. Run Service
```sh
python main.py
```

Finally, open http://localhost/graphql/ to test graphql endpoint. And open http://localhost:8080 to manage database.
