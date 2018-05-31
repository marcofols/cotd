FROM php:7.0-apache
RUN yum update \
    && yum install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common \
    && curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add - \
    && add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/debian \
    $(lsb_release -cs) \
    stable" \
    && yum install -y \
    docker-ce 
    kubectl
    hostname
COPY . /var/www/html/
