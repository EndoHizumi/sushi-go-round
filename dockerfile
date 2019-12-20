FROM node

EXPOSE 8080
WORKDIR /usr/local/bin/sushi-go-round
RUN npm cache --force clean
COPY package*.json ./
RUN npm install
RUN npm install -g @vue/cli
RUN npm install -g http-server
RUN npm update
COPY . .
RUN npm run build
CMD ["http-server", "./dist"]