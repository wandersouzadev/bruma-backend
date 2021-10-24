FROM strapi/base

WORKDIR /usr/src/app

COPY ./package.json ./

RUN npm i

COPY . .

ENV VIRTUAL_HOST=strapi.brunavaltrick.com.br
ENV NODE_ENV production

RUN npm run build

EXPOSE 1337

CMD ["npm", "start"]
