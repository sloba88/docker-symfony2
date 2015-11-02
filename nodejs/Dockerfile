FROM node:0.10.38

RUN npm install nodemon -g

ADD ./node /var/www
ADD entrypoint.sh /entrypoint.sh

WORKDIR /var/www/node

RUN ls -l

RUN npm install
#RUN node /var/www/app.js

EXPOSE 3000

ENTRYPOINT ["/entrypoint.sh"]
CMD npm start