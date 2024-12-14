# Use the official Node.js image as the base image
FROM node:22.11-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json ./
COPY yarn.lock ./

# Install dependencies
RUN yarn install

# Copy the rest of the application code to the working directory
COPY . .

# Generate Prisma client
RUN npx prisma generate

# Build the TypeScript code
RUN yarn build

RUN addgroup -g 1001 -S nodejs
RUN adduser -S node-api -u 1001

RUN chown -R node-api:nodejs /app

USER node-api

# Expose the port the app runs on
EXPOSE 3001


# Start the application
CMD ["yarn", "start"]