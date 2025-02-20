# itp-docker
Week 4 front end deployment
This is a local deployment to server the GitHub Pages app of my app

## Architecture
- requests to 'http://localhost:8081' get routed to the 'fp-svc' which
is has a websevrer on port '7901'
- for 'http://fp-svc:7901/', the container proxies to 'http://hp-svc:6969/'
- for 'http://fp-svc:7901/courses', the container serves the pages site stored
inside the image ar '/usr/share/nginx/html'
- the 'hp-svc' serves a landing page on port '6969' this comes from a volume
## Prerequisites
- Docker version (27.2.0, build 3ab4256)+
- sh shell with typical tools and perl
## Testing Notes
- tested on windows 11 home
- tested with docker version 27.2.0
- tested with Git Bash
## Usage
1. Initialize the file structure and volumes.
    ```bash
    chmod +x scripts/init.sh;
    ./scripts/init.sh;
    ```
2. Up the compose stack:
    ```bash
    docker compose up -d;
    ```
3. Down the compose stack:
    ```bash
    docker compose down;
    ```
