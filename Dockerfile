FROM node:8
WORKDIR /usr/src/app
RUN npm install serve -g
COPY . .
EXPOSE 5000
CMD serve -s build