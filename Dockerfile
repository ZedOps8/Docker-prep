# Use the official Node.js image as the base
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of the application source code to the container
COPY . .

# Expose a port (if your app listens on a specific port)
EXPOSE 3000

# Command to run your Node.js application
CMD ["node", "app.js"]
