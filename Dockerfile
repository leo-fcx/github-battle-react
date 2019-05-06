FROM node:8
RUN ls -la /usr/src/app
RUN cd /usr/src/app
RUN npm install
RUN npm install serve -g
RUN npm run build
EXPOSE 5000
CMD serve -s build