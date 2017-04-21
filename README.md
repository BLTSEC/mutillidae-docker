# mutillidae-docker
Dockerfile for Mutillidae II v2.6.44 running on Ubuntu 16.04 with a Xampp v5.6.30 stack
# Description
Dockerfile for creating an Ubuntu 16.04 / Xampp v5.6.30 stack container for OWASP Mutillidae II Web Pen-Test Practice Application v2.6.44
# Quickstart
### Pull Docker Image

Pull image: docker pull bltsec/mutillidae-docker

Start: docker run -d -p 80:80 -p 443:443 --name owasp17 bltsec/mutillidae-docker

### Build Docker Image

Create an empty direcotry and place the Dockerfile in it

Create the image using terminal: docker build -t mutillidae .

Start: docker run -d -p 80:80 -p 443:443 --name owasp17 bltsec/mutillidae-docker
