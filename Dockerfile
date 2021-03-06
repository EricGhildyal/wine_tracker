# Grab the official node package
FROM node:7.10.0-slim

# Make our modules folder and make it our working dir
RUN mkdir /modules
WORKDIR /modules

# Add our package.json file to install node modules
ADD ./package.json .

# Install our node modules
RUN npm install

# Make our app folder and make it our working dir
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

#Copy data to working dir
COPY . /usr/src/app/

# Expose our development port
EXPOSE 3000

# Tell node where to find the modules
ENV NODE_PATH=/modules/node_modules
ENV PATH=/modules/node_modules/.bin:$PATH
# Start our app!
CMD ["npm", "start"]