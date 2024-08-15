# Python Flask Graphql Boilerplate

Python flask graphql boilerplate, to help Devetek python developer to deliver project with standard graphql endpoint

## Prerequisite

- Python == 3.10.10  

## Structure

```sh
root/
├──  config  # Configuration .ini, use env variable $ENVIRONMENT to select file
├──  scripts  # External scripts, to support development, automation or production
├──  shared  # Library code that's ok to use by a cross applications
├──  gqlserver  # Graphql code implementation
```

## Development

To run service locally, follow steps below: 

1. Execute command `make setup` to prepare virtual environment.
 2. Execute command `make run` to run service in port `3000`.
	- To use another port, use command `make run port=4000`.
	- To run in production mode, use command `make run env=production`.
3. Open http://localhost:3000/graphql/ to test graphql endpoint, or open other URL if you set custom port.