FROM node:latest as build-stage
WORKDIR /app
COPY ./ .
RUN npm install
RUN npm run build
RUN npx pkg ./node_modules/@import-meta-env/cli/bin/import-meta-env.js -t node16-alpine -o import-meta-env


FROM nginx:1.23-alpine
COPY --from=build-stage /app/dist /usr/share/nginx/html/app/dist
COPY --from=build-stage /app/import-meta-env /usr/share/nginx/html/app/import-meta-env
COPY .env.example /usr/share/nginx/html/app/.env.example
COPY entrypoint.sh /usr/share/nginx/html/app/entrypoint.sh
RUN chmod +x /usr/share/nginx/html/app/entrypoint.sh 
RUN chmod +x /usr/share/nginx/html/app/import-meta-env
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
ENTRYPOINT [ "/usr/share/nginx/html/app/entrypoint.sh" ]