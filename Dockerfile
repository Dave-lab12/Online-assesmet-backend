FROM node:16
RUN apt-get update && apt-get install libvips-dev -y
WORKDIR /app
COPY ./package.json ./package-lock.json ./
RUN npm install

COPY . /app/
RUN npm run build
CMD ["npm", "run", "develop"]
