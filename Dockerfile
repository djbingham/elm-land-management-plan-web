ARG NODE_ENV=production
ARG NODE_VERSION=10.15.3

# Development
FROM node:${NODE_VERSION}-alpine AS development

USER node
WORKDIR /home/node

COPY --chown=node:node package.json package-lock.json /home/node/
RUN npm ci

COPY --chown=node:node . /home/node/
RUN npm run build

CMD ["node", "index.js"]

# Production
FROM node:${NODE_VERSION}-alpine AS production

ENV NODE_ENV $NODE_ENV

USER node
WORKDIR /home/node

EXPOSE 3000

# Install dependencies, including build tools
COPY package.json package-lock.json /home/node/
RUN NODE_ENV=development npm ci

# Add source code, build app and remove build tools
COPY . /home/node/
RUN npm run build && npm ci

CMD ["node", "index.js"]
