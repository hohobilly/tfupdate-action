FROM minamijoyo/tfupdate:0.6.5

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh
RUN apk del git
RUN apk add git=2.32.0-r0

ENTRYPOINT ["/entrypoint.sh"]
