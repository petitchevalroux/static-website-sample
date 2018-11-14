# Sample Static Website

This repo contains a set of static files (image, js, css and html) generated with Wordpress, [Fakerpress](https://github.com/bordoni/fakerpress) and httrack.

The goal is to use this files with [Siege](https://github.com/JoeDog/siege) to stress test http servers with a list of urls.


## Usage

Start container
```bash
docker run -p 8080:80 petitchevalroux/static-website-sample
```

Download urls list
```bash
wget https://raw.githubusercontent.com/petitchevalroux/static-website-sample/master/urls.txt
```

Launch benchmark (default mode)
```bash
siege -f urls.txt
```
By default siege never stop, just Ctrl+C in order to see performance statistics and stop it.

Launch benchmark (never ending)
```bash
siege -f urls.txt
```
By default siege never stop, just Ctrl+C in order to see performance statistics and stop it.

Benchmark all urls once
```bash
siege -r once -f urls.txt
```

## Building
Clone current repository
```bash
docker run -p 8080:80 petitchevalroux/static-website-sample
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
