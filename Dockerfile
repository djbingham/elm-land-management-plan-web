FROM node:10.15.3-alpine

ARG NODE_ENV=production

USER node
WORKDIR /home/node

EXPOSE 3000

# Install dependencies, including dev dependencies for build
ENV NODE_ENV development
COPY --chown=node:node package.json package-lock.json /home/node/
RUN npm ci

# Add source code, build app for target environment, then remove dev dependencies
ENV NODE_ENV $NODE_ENV
COPY --chown=node:node . /home/node/
RUN npm run build && npm ci

CMD ["node", "index.js"]
