FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y libx11-6

# Copy everything from the local 'cc3d' folder to the '/app' folder in the container
COPY cc3d/ /app

WORKDIR /app

# Make the server executable
RUN chmod +x server.x86_64

# List files to ensure server.x86_64 is copied correctly (debugging step)
RUN ls -l /app

# Start the server
CMD ["./server.x86_64"]