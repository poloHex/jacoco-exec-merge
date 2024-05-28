# Container image that runs your code
FROM openjdk:17.0.1-jdk-slim

RUN apt-get update &&\
    apt-get install -y curl jq &&\
    apt-get clean
# https://github.com/jacoco/jacoco/issues/566#issuecomment-315353432
RUN curl -SL https://repo1.maven.org/maven2/org/jacoco/org.jacoco.cli/0.8.12/org.jacoco.cli-0.8.12-nodeps.jar -o jacococli.jar

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
