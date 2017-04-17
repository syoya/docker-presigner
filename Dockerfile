FROM minodisk/presigner:1.1.0

WORKDIR /presigner
COPY run.sh ./

CMD sh run.sh
