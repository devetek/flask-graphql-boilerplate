# Butterfly

[![All Contributors](https://img.shields.io/badge/all_contributors-2-orange.svg?style=flat-square)](#contributors)

## Phylosophy

The Butterfly is an item purchasable at the Main Shop, under Weapons. However, it can only be completed with items from the Secret Shop.

## requirements

- Docker >= 19.03.5
- Docker Compose >= 1.24.1

## Project Structure

```sh
root/
├── docker                          # Global docker configuration
├── config                          # Global config for all interface
├── helpers                         # Global helpers for all interface
├── libraries                       # Global libraries for all interface
├── models                          # Global models for all interface
├── process                         # Scripts to manage process
├── cli                             # CLI Interface
      ├── helpers                   # Local CLI helper
      ├── libraries                 # Local CLI libraries
      ├── modules                   # Local CLI modules
├── web                             # HTTP Interface
      ├── helpers                   # Local HTTP helper
      ├── libraries                 # Local HTTP libraries
      ├── modules                   # Local HTTP modules
      ├── template                  # HTML template for related module
```

## Running Development

Bootstrap development using docker is easier. Follow command below  to run development:

```sh
make run-dev
```

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
