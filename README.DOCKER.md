# Docker for Drawflow

This document explains how to run Drawflow using Docker.

## Prerequisites

- Docker installed on your system
- Docker Compose (optional, but recommended)

## Running with Docker

### Using Docker Compose (Recommended)

```bash
docker-compose up
```

The application will be available at http://localhost:8080

### Using Docker directly

```bash
# Build the image
docker build -t drawflow .

# Run the container
docker run -p 8080:8080 drawflow
```

The application will be available at http://localhost:8080

## Stopping the Application

If you're using Docker Compose:
```bash
docker-compose down
```

If you're using Docker directly, find the container ID and stop it:
```bash
docker ps
docker stop <container-id>
```