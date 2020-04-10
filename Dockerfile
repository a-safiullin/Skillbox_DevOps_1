FROM node

RUN mkdir /app
COPY package.json /app
RUN cd /app && yarn install

COPY . /app

# To return false
# RUN /bin/false

#RUN cd /app && yarn test
RUN cd /app && yarn build

# Or WORKDIR /app (before RUN) - to set workdir

WORKDIR /app

EXPOSE 3000

CMD yarn start