# build stage
FROM node:lts-alpine as build-stage

# set the current working directory
WORKDIR /usr/src/app

# copy both 'package.json' and 'package-lock.json'
COPY package*.json ./

# install project dependencies
RUN npm install

# copy project files and folders to the container
COPY . ./

# build app for production
RUN npm run build

# production stage
FROM nginx:stable-alpine as production-stage

# copy production artifacts from the working directory
COPY --from=build-stage /usr/src/app/dist /usr/share/nginx/html

# make the container port accessible externally
EXPOSE 80

# start the service
CMD ["nginx", "-g", "daemon off;"]