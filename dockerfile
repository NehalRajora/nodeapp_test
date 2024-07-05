FROM node:16

# FROM prom/prometheus
# ADD prometheus.yml /etc/prometheus/

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install

COPY . .

EXPOSE 4000
CMD [ "node", "index.js" ]
