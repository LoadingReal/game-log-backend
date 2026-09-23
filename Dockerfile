# --- Stage 1: Build ---
FROM node:20-slim AS builder

WORKDIR /app

# Copy dependency manifests
COPY package*.json ./

# Install ALL dependencies (including devDependencies like typescript & tsc)
RUN npm ci

# Copy full source code
COPY . .

# Compile TypeScript to JS (generates /app/dist)
RUN npm run build


# --- Stage 2: Production Runner ---
FROM node:20-slim AS runner

WORKDIR /app

ENV NODE_ENV=production

COPY package*.json ./

# Install ONLY production dependencies to keep the image lightweight
RUN npm ci --omit=dev

# Copy compiled JavaScript output from builder stage
COPY --from=builder /app/dist ./dist

# Expose app port
EXPOSE 3000

# Start production server
CMD ["npm", "run", "start"]