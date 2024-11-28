FROM node:18.20.5

RUN npm install -g npm@10.9.1

ADD package.json .
ADD index.js .
ADD build .
COPY . .
RUN npm install


EXPOSE 8080

CMD [ "node", "index.js" ]
