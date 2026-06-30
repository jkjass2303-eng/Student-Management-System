FROM jenkins/jenkins:lts

USER root

# Install required tools
RUN apt-get update && \
    apt-get install -y \
        maven \
        docker.io \
        git \
        curl && \
    rm -rf /var/lib/apt/lists/*

# Give Jenkins permission to use docker
RUN groupadd -f docker && \
    usermod -aG docker jenkins

USER jenkins
