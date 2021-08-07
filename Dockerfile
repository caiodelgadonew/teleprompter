FROM    alpine

LABEL   code.author="manifestinteractive"
LABEL   dockerfile.author="caiodelgadonew"
LABEL   dockerfile.mantainer="caiodelgadonew"

RUN     apk add --no-cache lighttpd 

COPY    teleprompter /var/www/localhost/htdocs/

EXPOSE  80
CMD     lighttpd -D -f /etc/lighttpd/lighttpd.conf
