FROM strapi/base

WORKDIR /usr/src/app

COPY ./package.json ./

RUN npm i

COPY . .

ENV VIRTUAL_HOST=strapi.brunavaltrick.com.br
ENV NODE_ENV production

# Cloudinary
ENV CLOUDINARY_NAME ""
ENV CLOUDINARY_KEY ""
ENV CLOUDINARY_SECRET ""
ENV CLOUDINARY_FOLDER ""
#

RUN npm run build

EXPOSE 1337

CMD ["npm", "start"]
