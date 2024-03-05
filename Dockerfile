# Use an official Node runtime as a parent image
FROM node:21-alpine

# Set the working directory to /app
WORKDIR /app

# Copy package.json and pnpm-lock.yaml to the working directory
COPY package.json pnpm-lock.yaml ./

# Install pnpm globally
RUN npm install -g pnpm

# Install dependencies using pnpm
RUN pnpm install

# Copy the current directory contents into the container at /app
COPY . .

EXPOSE 5173

# Command to run the application
CMD ["pnpm", "run", "dev", "--host"]
