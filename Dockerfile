# Use Node.js base image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Set environment variables (you can also use Docker Compose for this)
ENV NODE_ENV=production
ENV PORT=7001

# Expose the port that Medusa will run on
EXPOSE 7001

# Run database migrations before starting the server
CMD ["npm", "run", "start"]
