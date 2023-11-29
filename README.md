# Python Flask Graphql Boilerplate

Python flask graphql boilerplate, to help Devetek python developer to deliver project with standard graphql endpoint 

## requirements

- [Docker](https://github.com/devetek/belajar-docker)
- Docker Compose
- Python == 3.10.10

## Project Structure

```sh
root/
├── docker                          # Global docker configuration
├── config                          # Configuration file can be ini, yaml, json, yoml
├── scripts                         # External scripts, to interact with CI / CD
├── shared                          # Shared Interface, shared package for all application
      ├── helpers                   # Local shared helper
      ├── libraries                 # Local shared libraries
      ├── modules                   # Local shared modules
├── cli                             # CLI Interface, helper to generate preset env pre graphql run
      ├── helpers                   # Local CLI helper
      ├── libraries                 # Local CLI libraries
      ├── modules                   # Local CLI modules
├── gqlserver                       # graphql Interface, contains core of graphql instance
      ├── helpers                   # Local graphql helper
      ├── libraries                 # Local graphql libraries
      ├── modules                   # Local graphql modules
```

## How To

### Run Development With Docker

Bootstrap development using docker. Follow command below to run development:

```sh
make run
```

then open http://localhost:5000/graphql/

## Contributors

Open to contributor