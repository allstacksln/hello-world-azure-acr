# Atlantis

Atlantis is an application for automating Terraform via pull requests. It is deployed as a standalone application into your infrastructure. No third-party has access to your credentials.

Atlantis listens for GitHub, GitLab or Bitbucket webhooks about Terraform pull requests. It then runs terraform plan and comments with the output back on the pull request.

When you want to apply, comment atlantis apply on the pull request and Atlantis will run terraform apply and comment back with the output.


### Resources
- https://www.runatlantis.io/
- Demo: https://www.youtube.com/watch?v=TmIPWda0IKg

## Excercise Instructions

In this excercise, we will be deploying a local instance of Atlantis using the Dockerfile provided. We will then configure the app
to listen for Github webhook events from our hello-world repo. You will then implement terraform actions via the application and 
pull request vs locally on the CLI to demo the usecase for the app.


### Prequistes
- [Ngrok](https://ngrok.com/)
    - Install application
    - Sign up for an account and connect your account locally
        - https://dashboard.ngrok.com/get-started/setup

- Update the docker-compose.yml
    - Create a Github Personal Access Token & update
    - Update with Azure Client Credentials

### Run Local Instance
Open 2 terminal windows

**1st Terminal**
```
ngrok http 4141
```
Take `https` url and create [a github webhook](https://www.runatlantis.io/docs/configuring-webhooks.html#github-github-enterprise)

**2nd Terminal**
Setup your environment variables in `docker-compose.yml` for your personal values

```
docker-compose build
docker-compose up
```

Create a new pull request and confirm everything works.

## Resources
- https://www.runatlantis.io/
