#OSCDocker
This docker container contains the OpenStreetCam upload scripts

## Tags

2 tags are available: latest and sab
latest is meant to be run with tty and interactive, while sab contains ShellInABox and can be run normally

## Examples

    docker run -t -i --name osc robinvanderlinde/osc:latest

	docker run --name osc -p 4200:4200 robinvanderlinde/osc:sab