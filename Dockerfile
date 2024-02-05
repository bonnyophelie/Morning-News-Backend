FROM node:16.20.2-buster
RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
WORKDIR /home/node/app
COPY . .
ARG url
ENV CONNECTION_STRING $url
ENV NEWS_API_KEY "2c5a3c941d8d4d349d1c708619e3c378"
USER node
RUN yarn install
EXPOSE 3000
CMD ["yarn", "start"]
