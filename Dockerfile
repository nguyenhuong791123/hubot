FROM node

RUN npm install -g yo generator-hubot coffee-script
RUN npm list -g yo generator-hubot
RUN useradd bot
RUN mkdir /home/bot && chown bot.bot /home/bot

USER bot
WORKDIR /home/bot
#RUN npm install hubot-jenkins-optimised --save
RUN yo hubot --owner "hawksnowlog" --name "jenkins-bot" --description "A bot which can be kicked any jenkins job" --adapter slack
COPY jenkins.coffee /home/bot/scripts/
COPY hubot-scripts.json /home/bot/
#COPY external-scripts.json /home/bot/

CMD cd /home/bot/hubot; bin/hubot --adapter slack
