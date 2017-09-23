FROM node:6
RUN npm install -g @angular/cli
RUN echo "fs.inotify.max_user_watches=524288" >> /etc/sysctl.conf
RUN sysctl -p /etc/sysctl.conf
WORKDIR /code

CMD ["npm", "start"]