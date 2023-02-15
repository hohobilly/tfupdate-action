FROM minamijoyo/tfupdate:0.6.7

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

RUN apk -e search git

ENTRYPOINT ["/entrypoint.sh"]
