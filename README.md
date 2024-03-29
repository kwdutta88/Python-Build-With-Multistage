# Calculator Application with Multi-stage Docker Build

This repository along with https://github.com/kwdutta88/Docker-Build-Without-Multistage.git contains a simple calculator application implemented in Python. The purpose of this README is to highlight how using multi-stage Docker builds and distroless images benefits the Docker image by reducing its size and improving efficiency.

## Benefits of Multi-stage Docker Build and Distroless Image

### 1. Reduced Image Size
Using multi-stage Docker builds allows us to reduce the size of the final Docker image by eliminating unnecessary build dependencies and artifacts. By building the application in multiple stages and using a minimal base image such as distroless, we can significantly reduce the size of the Docker image.
Here we have reduced the size of the docker image by 90%.

### 2. Improved Efficiency
Distroless images are designed to contain only the necessary runtime dependencies for running a specific type of application, without including any extra tools or libraries that are typically found in a full Linux distribution. This improves the efficiency of the Docker image by reducing overhead and minimizing attack surface.

## Use Cases

### 1. Microservices Architecture
Multi-stage Docker builds and distroless images are well-suited for microservices architecture, where multiple lightweight containers are deployed and managed independently. These optimized Docker images help reduce resource usage and improve scalability.

### 2. Continuous Integration/Continuous Deployment (CI/CD)

Using multi-stage Docker builds allows for faster build times and more efficient CI/CD pipelines. By minimizing the size of Docker images, deployments become faster and more reliable, leading to improved development workflows and faster time-to-market.

## How to Build and Run the Application.

Step 1 :Clone this repository

Step 2 : Move to the root directory of the project and run following commands.

docker build -t calculator .

Step 3 : To check the images run the following command

docker images

Note : The image size should be around 54 MB while if you don't use multi-stage docker build you would see the image size around 504MB.
