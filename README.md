# docker-python-flask
A simple Docker container with a Python flask server.

## Instructions
To build the Docker image run:
```
docker build -t <image-name> .
```
To run the Docker image use:
```
docker run -d --name <container-name> -p 8080:8080 <image-name>
```
### Example
```
docker build -t py-flask .
docker run -d --name python-server -p 8080:8080 py-flask
```
The server can be accessed by visiting **localhost:8080** in a browser.
