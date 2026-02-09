# Use Node.js LTS slim image
FROM node:20-slim

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json (or pnpm-lock.yaml if using pnpm)
COPY package*.json ./

# Install dependencies
RUN npm install
# If you use pnpm instead, replace with:
# RUN npm install -g pnpm && pnpm install

# Copy the rest of the project
COPY . .

# Expose the dev port (adjust if your app uses a different port)
EXPOSE 3000

# Start the dev server
CMD ["npm", "run", "dev"]
