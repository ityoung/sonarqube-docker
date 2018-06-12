### Sonar-scanner Dockerfile
### Author: ityoung@foxmail.com

FROM openjdk:8

ENV SONAR_SCANNER_VER 3.2.0.1227-linux
ENV INST_PATH /etc

WORKDIR $INST_PATH

RUN wget https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-$SONAR_SCANNER_VER.zip \
    && unzip sonar-scanner-cli-$SONAR_SCANNER_VER.zip \
    && rm sonar-scanner-cli-$SONAR_SCANNER_VER.zip

COPY sonar-scanner.properties sonar-scanner-$SONAR_SCANNER_VER/conf/sonar-scanner.properties

ENV PATH $PATH:$INST_PATH/sonar-scanner-$SONAR_SCANNER_VER/bin

WORKDIR /

RUN apt-get install python3.5 \
    && curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py \
    && python get-pip.py \
    && pip install pylint
