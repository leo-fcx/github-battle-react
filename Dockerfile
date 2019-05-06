FROM node:8
WORKDIR /usr/src/app
COPY ** ./
RUN npm install
RUN npm install serve -g
RUN npm run build
COPY . .
EXPOSE 5000
CMD serve -s build