# Use official Node.js base image
FROM node:20-alpine

# Create app directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy app source
COPY . .

# Expose the port
EXPOSE 8080

# Run the app
CMD ["npm", "start"]
