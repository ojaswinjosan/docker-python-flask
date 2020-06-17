FROM python:alpine3.7

# Set working directory to /app and copy all the files from 
# the container-files folder to it
WORKDIR /app
COPY ./container-files /app

# Update pip and install the required Python modules
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Expose port 8080 to the host
EXPOSE 8080

# Start the server
CMD  ["python","main.py"]
