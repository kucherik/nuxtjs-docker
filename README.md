# Environment of nuxt.js project 

```
    [+] AUTOR:        Gerardo Junior
    [+] SITE:         https://gerardo-junior.com
    [+] EMAIL:        me@gerardo-junior.com
    [+] GITHUB:       https://github.com/gerardo-junior/nuxtjs-docker.git
    [+] TELEGRAM:     @MrGerardoJunior
```

[![Docker Automated build](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/gerardojunior/nodejs)

Docker image to run [nuxt.js](nuxtjs.org) projects

> The project must be in the **/src** container folder 
## Tags available

- [stable](https://github.com/gerardo-junior/nuxtjs-docker/blob/master/Dockerfile), [latest](https://github.com/gerardo-junior/nuxtjs-docker/blob/develop/Dockerfile), [1.0.0](https://github.com/gerardo-junior/nuxtjs-docker/blob/1.0.0/Dockerfile)
  - [gerardojunior/nodejs](https://hub.docker.com/r/gerardojunior/nodejs) 1.0.0

## Come on, do your tests

```bash
docker pull gerardojunior/nuxtjs:stable
```
## How to build

to build the image you need install the [docker engine](https://www.docker.com/) only

> You can try building with different versions of software with docker args, for example: NODE_ENV=1.0.0

```bash
docker build https://github.com/gerardo-junior/nuxtjs-docker.git --tag gerardojunior/nuxtjs
```

## How to use

##### Only with docker command:

```bash
# in your project folder
docker run -it --rm -v $(pwd):/src -p 3000:3000 gerardojunior/nuxtjs:stable [command]

# or docker-compose
docker-compose run nuxt [command]
```
##### With [docker-compose](https://docs.docker.com/compose/)

Create the docker-compose.yml file  in your project folder with:

```yml
# (...)

  nuxt:
    image: gerardojunior/nuxtjs:stable
    restart: on-failure
    volumes:
      - type: bind
        source: ./
        target: /src
    ports:
      - 3000:3000
    #command: dev

# (...)
```

## How to enter image shell
 
```bash
docker run -it --rm gerardojunior/nuxtjs sh
# or with docker-compose
docker-compose run nuxt sh
```

### License  
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
