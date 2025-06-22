# Use the official Node.js image from Docker Hub
FROM node:18

# Set working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json first (for better caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all remaining files into the image
COPY . .

# Expose port 3000 (for Docker networking)
EXPOSE 3000

# Run the app when the container starts
CMD ["npm", "start"]
