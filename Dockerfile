FROM minodisk/presigner:1.0.1

WORKDIR /presigner
COPY run.sh ./

RUN sh run.sh
