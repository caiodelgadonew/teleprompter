FROM    alpine

LABEL   code.author="manifestinteractive"
LABEL   dockerfile.author="caiodelgadonew"
LABEL   dockerfile.mantainer="caiodelgadonew"

RUN     apk add --no-cache lighttpd && \
        echo -e "port = 4040\nserver.port = 4040" | tee -a /etc/lighttpd/lighttpd.conf

COPY    teleprompter /var/www/localhost/htdocs/

EXPOSE  4040
CMD     lighttpd -D -f /etc/lighttpd/lighttpd.conf
