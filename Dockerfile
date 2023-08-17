FROM node:16-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . ./

# Build React app
RUN npm run build

# Start app
CMD ["npm", "run","start"]

EXPOSE 3000