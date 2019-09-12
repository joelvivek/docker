# Specify a base image
FROM node:alpine

WORKDIR /usr/app

# Copy the file  that was only change from harddrive to container
COPY ./package.json ./

# Install dependencies
RUN npm install

COPY ./ ./


# Default CMD
CMD ["npm", "start"]
