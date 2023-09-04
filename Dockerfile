# Use an official Node.js runtime with Yarn as the base image
FROM node:latest

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and yarn.lock to the container
COPY .package.json ./yarn.lock ./

# Install Strapi dependencies using Yarn
RUN yarn install

# Copy the Strapi application code into the container
COPY . .

# Expose the port that Strapi will run on
EXPOSE 3001

# Start Strapi
CMD ["yarn", "start"]