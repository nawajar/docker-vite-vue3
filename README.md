# nweb

Docker ship vite + vue3 environment injection.

example
```sh
docker build -t vweb:1.0 .
docker run -p 80:80 -e APP_TITLE='passing1235e' vweb:1.0
```


## Customize configuration

See [Vite Configuration Reference](https://vitejs.dev/config/).

## Project Setup

```sh
npm install
```

### Compile and Hot-Reload for Development

```sh
npm run dev
```

### Type-Check, Compile and Minify for Production

```sh
npm run build
```

### Lint with [ESLint](https://eslint.org/)

```sh
npm run lint
```
