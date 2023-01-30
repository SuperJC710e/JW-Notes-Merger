FROM node:18 as builder

WORKDIR /app

COPY . .

RUN rm -rf package-lock.json; \
	yarn install; \
	yarn run build

# EXPOSE 3000

FROM nginx:alpine

WORKDIR /usr/share/nginx/html

RUN rm -rf ./*
COPY --from=builder --chown=root:nginx /app/dist/. .

EXPOSE 80

ENTRYPOINT ["nginx", "-g", "daemon off;"]
