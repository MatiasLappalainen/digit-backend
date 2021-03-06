FROM node:12.10.0-alpine
RUN yarn global add pm2 node-pre-gyp


WORKDIR /
ADD ./ /

ADD package.json package.json

ENV NODE_PATH=/node_modules
ENV PATH=$PATH:/node_modules/.bin
RUN yarn
RUN yarn install

CMD ["pm2-runtime", "digit_dev_docker.config.js"]