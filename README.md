# Elm starter

This is a starter kit based in this repo below: 

https://github.com/elm-community/elm-webpack-starter

##Instructions

### About:
A simple Webpack setup for writing [Elm](http://elm-lang.org/) apps:

* Dev server with live reloading, HMR
* Support for CSS/SCSS (with Autoprefixer), image assets
* Bundling and minification for deployment
* A snippet of example code to get you started!
* Route support


### Install:
Clone this repo into a new project folder, e.g. `my-elm-project`:
```
git clone https://github.com/dbeff/elm-starter my-elm-project
cd my-elm-project
```

Re-initialize the project folder as your own repo:
```
rm -rf .git         # on Windows: rmdir .git /s /q
git init
git add .
git commit -m 'first commit'
```

Install all dependencies using the handy `reinstall` script:
```
npm run reinstall
```
*This does a clean (re)install of all npm and elm packages, plus a global elm install.*


### Serve locally:
```
npm start
```
* Access app at `http://localhost:8080/`
* Get coding! The entry point file is `src/elm/Main.elm`
* Browser will refresh automatically on any file changes..

#### Data
http://www.json-generator.com/api/json/get/bOIdZyKTsi?indent=2



### Build & bundle for prod:
```
npm run build
```

* Files are saved into the `/dist` folder
* To check it, open `dist/index.html`
