FROM node:16.20.2-buster
RUN mkdir -p /home/node/app/node_modules 
WORKDIR /home/node/app
COPY . .
RUN chown -R node:node /home/node/app
ARG url
ENV CONNECTION_STRING $url
ENV NEWS_API_KEY "2c5a3c941d8d4d349d1c708619e3c378"
USER node
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]
