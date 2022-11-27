FROM node:14

EXPOSE 3001

WORKDIR /src

RUN npm install i npm@latest -g

RUN apt-get update

RUN npm install -g nodemon

COPY . .

RUN npm install

COPY . .

CMD ["nodemon"]
