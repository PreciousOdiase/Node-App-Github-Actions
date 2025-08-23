FROM node:18
RUN npm 
WORKDIR /app
COPY ..
CMD npm start
