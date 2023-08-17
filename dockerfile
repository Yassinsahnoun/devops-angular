FROM node:16


WORKDIR /app
COPY package*.json ./

RUN npm install -g @angular/cli
RUN npm install

COPY . .
EXPOSE 4200
CMD ["ng","build"]