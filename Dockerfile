FROM node:8.6.0

# Create app directory
WORKDIR /usr/src/app

# Install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Bundle app source
COPY . .

# Use prod-config, comment out to use dev-config
COPY prod-config.json ./config.json

EXPOSE 1337
CMD [ "npm", "start" ]

# Build
# docker build -t orion .

# Run
# docker run -p 1337:1337 orion:latest
