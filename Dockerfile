FROM node:16
RUN apt-get update && apt-get install libvips-dev -y
WORKDIR /app
COPY ./package.json ./yarn.lock.json ./
RUN yarn

COPY . /app/
RUN yarn build
CMD ["yarn", "develop"]
