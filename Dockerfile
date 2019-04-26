FROM node:10

RUN groupadd -r nodejs \
   && useradd -m -r -g nodejs nodejs

USER nodejs

RUN mkdir -p /home/nodejs/app
WORKDIR /home/nodejs/app

COPY . /home/nodejs/app/
RUN npm install

CMD ["node", "index.js"]
