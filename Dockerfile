FROM debian:bullseye-slim

# Install dependencies
RUN apt-get update && apt-get install -y libx11-6

# Copy everything from the current directory to /app in the container
COPY . /app

WORKDIR /app

# Make the server executable
RUN chmod +x server.x86_64

# List files to debug if the server file exists
RUN ls -l /app

# Start the server
CMD ["./server.x86_64"]