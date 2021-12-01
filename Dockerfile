FROM strapi/base

WORKDIR /usr/src/app

COPY ./package.json ./

RUN npm i

COPY . .

ENV VIRTUAL_HOST=strapi.brunavaltrick.com.br
ENV NODE_ENV production

# Cloudinary
ENV CLOUDINARY_NAME=dhg1eek8g
ENV CLOUDINARY_KEY=887136717356762887136717356762
ENV CLOUDINARY_SECRET=jSPdSZ8_caZE4czqVcQ_kvaMDv8
ENV CLOUDINARY_FOLDER=bruma_strapi
#

RUN npm run build

EXPOSE 1337

CMD ["npm", "start"]
