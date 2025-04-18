FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y libx11-6

COPY . /app
WORKDIR /app

RUN chmod +x server.x86_64

CMD ["./server.x86_64"]
