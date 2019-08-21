FROM node:10.15.1
RUN yarn global add pm2 node-pre-gyp


WORKDIR /
ADD ./ /

ADD package.json package.json

ENV NODE_PATH=/node_modules
ENV PATH=$PATH:/node_modules/.bin
ENV NODE_ENV=development
RUN yarn
RUN yarn install

CMD ["pm2-runtime", "digit_dev_docker.config.js"]


