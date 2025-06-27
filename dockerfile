FROM node:18-alpine
WORKDIR /app
#package.json is a configuration file used in Node.js projects which define metadata,dependencies,scripts,..
COPY package.json ./ 
#Install all the dependencies listed in package.json
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
#docker build -t express-app .
#docker run -p 3000:3000 express-app
