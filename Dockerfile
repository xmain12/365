# We are just using WhatsAsena's Dockerfile
# Also the Base
# But We are not depending Asena for All
# Therefore WhatsAlexa is not a Fake bot of WhatsAlexa
# © WhatsAlexa, Made by TOXIC-DEVIL

FROM fusuf/whatsasena:latest

RUN git clone https://github.com/xmain12/365 /root/365
WORKDIR /root/365/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
