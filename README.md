## What is Biblomaniac?
Biblomaniac is a Vue.js based front end that showcases CRUD functionality of [Maqalat](https://github.com/imtiazraqib/Maqalat), a Laravel based API that contains books in JSON format, with keys as `article_id`, `title` and `body`.

## What do you need to replicate this?
You need a working version of [Maqalat](https://github.com/imtiazraqib/Maqalat) and the setup can be found **[here](https://github.com/imtiazraqib/Maqalat#setup-maqalat)**.

* Open `package.json` and scroll down to `devDependencies` and make sure the following are present:
 ``` json
    "devDependencies": {
        "axios": "^0.19",
        "cross-env": "^5.1",
        "laravel-mix": "^4.0.7",
        "lodash": "^4.17.13",
        "resolve-url-loader": "^2.3.1",
        "sass": "^1.15.2",
        "sass-loader": "^7.1.0",
        "vue": "2.6.11",
        "bootstrap-sass": "3.4.1"
    }
```
* open terminal and run `npm install` to install the above depedencies
* To have Laravel mixer update your front end during development, run `npm run watch`

## Inspiration
The project is setup personally for me to learn Vue.js and familiarize myself with the framework. The project would not have been possible without the tutorial from [Traversy Media](https://www.youtube.com/channel/UC29ju8bIPH5as8OGnQzwJyA) over at YouTube. His video titled, *[Full Stack Vue.js & Laravel](https://www.youtube.com/watch?v=DJ6PD_jBtU0)* is what I used personally to follow along and learn the fundamentals of Vue.js and Laravel full stack development.
