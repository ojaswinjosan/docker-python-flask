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

---
### (Optional) Mount a container directory to the host
The container files can be accessed by mounting it to the host. Once mounted, the files can also be edited using a text editor or IDE. 

This requires the use of Docker Compose. Docker Compose helps fire up a Docker container by using a single command. That command is: 
```
docker-compose up -d
```
By default, the main 'app' directory will be mounted to C:\docker\py-sever\app\. This can be changed in docker-compose.yml, alongside image name, container name, and the port number.

Further information regarding Docker Compose is available in [their documentation](https://docs.docker.com/compose/).

---
### (Optional) Change the port
The default port is set to 8080.

It can be simply mapped to a different port. Using the example above, this can be accomplished by
```
docker build -t py-flask .
docker run -d --name python-server -p 1234:8080 py-flask
```
This will allow the server to be accessible through **localhost:1234**

**OR**

To change the port : -
1. In Dockerfile, change the value next to **EXPOSE**
```
EXPOSE <port-number>
```
2. In container-files/main.py, change the value after **port=**
```
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=<port-number>, debug=True)
```
3. Re-build the image and run it using the new port
```
docker build -t <image-name> .
docker run -d --name <container-name> -p <port-number>:<port-number> <image-name>
