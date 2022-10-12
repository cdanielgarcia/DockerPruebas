# DockerPruebas
run this command to running sql server:
docker pull postgres
docker run --name postgresdb -e POSTGRES_PASSWORD=password -p 5432:5432 -d postgres
docker logs <containerid>

#To create volume
docker run --name postgresdb -e POSTGRES_PASSWORD=password -e POSTGRES_DB=sistemaweb -p 5432:5432 -v C:\Users\Usuario\Documents\testing-docker\data\pg:/var/lib/postgresql/data -d postgres



#In order to create the image from our project we must create the DockerFile with next configuration after compile our artifact
$ ./mvnw clean package -DskipTests


#After that we must build the image:
$ docker build -t {name}/{nameimage} . 
#In my case is this one:
$ docker build -t image/person-service .


#After that we can run our container with the image like this:
$ docker run -p 8080:8080 image/person-service

#Now we need to tag our image and push on docker's repository For that we need to created a repository in docker hub With the same name of our last image, in our case person-service as next: https://hub.docker.com/r/maikgar10/person-service the next is the command to created the tag like this:
$ docker tag image/person-service maikgar10/person-service:v1

#And then we push the image associaded to the tag like the next:
$ docker push maikgar10/person-service:v1

#After that we will have our image in docker hub repository



-----Utils commands----
$ docker container prune  //remove the containers
$ docker volume prune //remove all the volume
$ docker-compose up --build  //to build all the container with Dockerfile