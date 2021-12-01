FROM strapi/base

WORKDIR /usr/src/app

COPY ./package.json ./

RUN npm i

COPY . .

RUN npm run build

ENV VIRTUAL_HOST=strapi.brunavaltrick.com.br
ENV NODE_ENV production

# Cloudinary
ENV CLOUDINARY_NAME=dhg1eek8g
ENV CLOUDINARY_KEY=887136717356762
ENV CLOUDINARY_SECRET=jSPdSZ8_caZE4czqVcQ_kvaMDv8
ENV CLOUDINARY_FOLDER=bruma-strapi
#

EXPOSE 1337

CMD ["npm", "start"]
