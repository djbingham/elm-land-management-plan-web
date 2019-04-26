[![Build Status](https://travis-ci.org/DEFRA/hapi-web-boilerplate.svg?branch=master)](https://travis-ci.org/DEFRA/hapi-web-boilerplate) [![Maintainability](https://api.codeclimate.com/v1/badges/5c3956c73c9b1496dadd/maintainability)](https://codeclimate.com/github/DEFRA/hapi-web-boilerplate/maintainability) [![Test Coverage](https://api.codeclimate.com/v1/badges/5c3956c73c9b1496dadd/test_coverage)](https://codeclimate.com/github/DEFRA/hapi-web-boilerplate/test_coverage) [![Greenkeeper badge](https://badges.greenkeeper.io/DEFRA/hapi-web-boilerplate.svg)](https://greenkeeper.io/)
# Land Management Plan web front end
This is the web front end for the Land Management Plan portion of the ELM service

# Environment variables

| name     | description      | required | default |            valid            | notes |
|----------|------------------|:--------:|---------|:---------------------------:|-------|
| NODE_ENV | Node environment |    no    |         | development,test,production |       |
| PORT     | Port number      |    no    | 3000    |                             |       |

# Prerequisites

Node v8+

For the pa11y tests to run on Ubuntu (including Ubuntu on WSL) the following packages must be installed.

gconf-service libasound2 libatk1.0-0 libatk-bridge2.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget
