# Sonos-Kids-Controller Docker
Runs Thyraz/Sonos-Kids-Controller in a Docker-Container

## Setup
Ensure that you have Docker & Docker-Compose up and running.

Also install [node-sonos-http-api](https://github.com/Thyraz/node-sonos-http-api) as described in the readme of the software. 
If you plan on using Spotify, follow the instructions [here.](https://github.com/Thyraz/node-sonos-http-api#note-for-spotify-users)

- Clone this repository to your machine
```
git clone https://github.com/marcogracklauer/docker-sonos-kids-controller
```
- Build a local Docker image
```
docker build -t sonos-kids-controller:latest .
```

## Usage

### Start the container using the `docker-compose.yml`:
- Modify the variables in `docker-compose.yml`according to your setup
- Edit `config.json` and fill it according to your setup
```
docker-compose up
```

If you want to run the container permamently, you'll need to use the `-d` option:

```
docker-compose -f docker-compose.yml up -d
```
Open a Browser and point it to your IP and Port 5200 (e.g. `http://192.168.0.123:5200`)

## Further Infos
This is just a Docker-Build from https://github.com/Thyraz/Sonos-Kids-Controller. See this page for further details.
