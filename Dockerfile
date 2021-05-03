# Container image that runs your code
FROM openjdk:11-jdk

RUN apt-get update

# https://github.com/jacoco/jacoco/issues/566#issuecomment-315353432
RUN wget https://repo1.maven.org/maven2/org/jacoco/org.jacoco.cli/0.8.6/org.jacoco.cli-0.8.6-nodeps.jar

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
