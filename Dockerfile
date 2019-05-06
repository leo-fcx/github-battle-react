FROM node:8
WORKDIR /usr/src/app
RUN npm install serve -g
COPY . .
RUN npm install
RUN npm run build
EXPOSE 5000
CMD serve -s build