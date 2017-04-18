FROM minodisk/presigner:1.1.1

WORKDIR /presigner
COPY run.sh ./

CMD sh run.sh
