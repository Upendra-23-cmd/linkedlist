# First we will use a base image to run our application on
FROM golang:1.23

# Setting up a working directory where our project will run
WORKDIR /app

# Copying the content of all the program to the image
COPY . .

# Running the essential command to run the project
RUN go build -o linkedlist

# Write the command to keep the container in running state
CMD ["./linkedlist"]