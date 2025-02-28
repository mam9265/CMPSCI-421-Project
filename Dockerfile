<<<<<<< HEAD
=======
@@ -0,0 +1,23 @@
>>>>>>> 0b46cd0aef9fa8d96fc74bb65ec5719c1ff7cfc0
# Start your image with a node base image
FROM node:20-alpine

# The /app directory should act as the main application directory
<<<<<<< HEAD
WORKDIR /app
=======
WORKDIR /app 1
>>>>>>> 0b46cd0aef9fa8d96fc74bb65ec5719c1ff7cfc0

# Copy the app package and package-lock.json file
COPY package*.json ./

# Copy local directories to the current local directory of our docker image (/app)
COPY ./src ./src
COPY ./public ./public

# Install node packages, install serve, build the app, and remove dependencies at the end
RUN npm install \
    && npm install -g serve \
    && npm run build \
    && rm -fr node_modules

EXPOSE 3000

# Start the app using serve command
<<<<<<< HEAD
CMD [ "serve", "-s", "build" ]
=======
CMD [ "serve", "-s", "build" ]
>>>>>>> 0b46cd0aef9fa8d96fc74bb65ec5719c1ff7cfc0
