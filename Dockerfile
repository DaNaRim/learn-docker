FROM ubuntu:20.04

RUN apt update
RUN apt install -y openjdk-17-jdk
RUN apt -y install wget

WORKDIR /var/www/test-docker

COPY src/Main.java Main.java

RUN wget https://repo1.maven.org/maven2/org/postgresql/postgresql/42.5.0/postgresql-42.5.0.jar

RUN javac Main.java

CMD java -cp postgresql-42.5.0.jar:. Main

# docker build -t test-docker:e1 .
# docker run -it test-docker:e1

#docker-compose build
#docker-compose up
#docker-compose up -d # run in background
# (command) --help
