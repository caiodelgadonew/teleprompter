FROM    node:16-alpine

LABEL   code.author="manifestinteractive"
LABEL   dockerfile.author="caiodelgadonew"
LABEL   dockerfile.mantainer="caiodelgadonew"

WORKDIR /usr/src/app

COPY    teleprompter/package*.json ./

RUN     npm install 

COPY    teleprompter . 

EXPOSE  3000
CMD     ["node", "server.js"]