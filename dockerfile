# Start with a base image
FROM node:16

# Set the working directory
WORKDIR /usr/src/demo

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy project files
COPY . .



# Define the command to run the app
CMD ["node", "index.js"]