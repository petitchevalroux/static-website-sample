# Sample Static Website

This repo contains a set of static files (image, js, css and html) generated with Wordpress, [Fakerpress](https://github.com/bordoni/fakerpress) and httrack.

The goal is to use this files with [Siege](https://github.com/JoeDog/siege) to stress test http servers with a list of urls.

## Usage with docker and latest nginx image

Clone current repository
```bash
git clone git@github.com:petitchevalroux/static-website-sample.git
```
Change directory to cloned one
```bash
cd static-website-sample
```
Build docker image
```bash
docker build . -t static-website-sample
```
Run docker image
```bash
docker run -d -p 80:80 static-website-sample
```
Launch siege
```bash
siege -f urls.txt
```

Author : [Patrick Poulain](http://petitchevalroux.net)
