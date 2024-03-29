# Stage 1: Build stage with Ubuntu image
FROM ubuntu:20.04 as builder

# Install Python and pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get clean

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Stage 2: Runtime stage with Python distroless image
FROM gcr.io/distroless/python3

# Copy the built application from the previous stage
COPY --from=builder /app /app

# Set the working directory in the container
WORKDIR /app

# Command to run the application
CMD ["python3", "calculator.py"]
