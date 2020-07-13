FROM golang:1.14.3
RUN apt-get update
RUN apt-get install -y git python jq curl

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get update && apt-get install -y nodejs
RUN npm install gulp -g
RUN npm install yarn -g

#psql
RUN apt-get install -y postgresql-client

#heroku
RUN curl https://cli-assets.heroku.com/install.sh | sh
