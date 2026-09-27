FROM node:22-alpine
WORKDIR /myapp
COPY nodejs-docker/packages*.json ./
RUN npm install --production
COPY --chown=node:node . .
USER node
EXPOSE 80
CMD ["node","node.js"]
