# JW Notes Merger

App developed with [Vite](https://vitejs.dev) and [React](https://reactjs.org) for merging JW Library's notes, bookmarks and markup.

## Pre-requisites

- Install [Node.js](https://nodejs.org/en/) version 15 or higher

## Getting started

- Clone the repository

```shell
git clone https://github.com/LeomaiaJr/JW-Notes-Merger
```

- Install dependencies

```shell
cd JW-Notes-Merger
yarn install
```

- Run the app

```shell
yarn run dev
```

## Containerization

- Build the container

```shell
docker build -t jw-notes-merger .
```

- Run the container

```shell
docker run -d -it --rm --name jw-notes-merger -p 3000:80 jw-notes-merger:latest
```

To run it with logging, leave the `-d` out of the above command, or run the following after the above:

```shell
docker logs -f jw-notes-merger
```

Use `ctrl+c` to exit.

To stop and remove the container, run the following:

```shell
docker stop jw-notes-merger && docker rm -f jw-notes-merger
```

## Production Environment

- Server

  - [Repo](https://github.com/LeomaiaJr/JW-Notes-Merger-Server)
  - [Link](https://notes-merger-server.leomaiajr.dev)

- Frontend
  - [Repo](https://github.com/LeomaiaJr/JW-Notes-Merger)
  - [Link](https://jw-notes-merger.leomaiajr.dev/)
