FROM node:8.9.3

USER node
RUN mkdir /home/node/.npm-global
ENV PATH=/home/node/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

RUN npm install -g create-react-app

USER root

#How to run it:
# docker build -t create-react-app .
# docker run -v $(pwd):/my-app create-react-app npx create-react-app my-app
# docker run -v $(pwd):/my-app -w /my-app -p 3000:3000 create-react-app npm start
# docker run -v $(pwd):/my-app -w /my-app -p 3000:3000 create-react-app npm build