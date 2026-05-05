FROM denoland/deno:alpine-1.47.0

WORKDIR /app

# Copy source
COPY . .

# Allow the container to run the module on port 8080
ENV PORT=8080

# Run the handler with the Deno HTTP server
# Use --allow-net only (and no persistent file writes)
CMD ["run", "--allow-net", "--unstable", "--no-check", "server.ts"]
