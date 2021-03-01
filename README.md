# Threeal Bot NLU

[Natural-language understanding (NLU)](https://en.wikipedia.org/wiki/Natural-language_understanding) API server for [Threeal bot](https://github.com/threeal/threeal-bot) using [Rasa Open Source](https://rasa.com/docs/rasa/).

## Project Setup

- Follow [this guide](https://rasa.com/docs/rasa/installation) to install Rasa Open Source.
  > As an alternative, you may deploy this project as [a Docker](https://www.docker.com/) container locally or on the cloud using [Heroku](https://www.heroku.com/home) with the configurations that have been provided.

## Usage

- Train the model.
  ```sh
  $ rasa train
  ```
- Run the API Server and test it on Threeal bot.
  ```sh
  $ rasa run --enable-api --cors "*"
  ```
