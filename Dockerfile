# base image
FROM node:12

# set working directory
WORKDIR /usr/src/app

# install and cache app dependencies
COPY package.json package.json
RUN yarn

COPY . .

RUN yarn build

EXPOSE 8080

# start app
CMD ["yarn", "serve"]