# DockerPruebas
###### Run this command to running postgresql database:
$ docker pull postgres
###### After that we can run our container like this:
$ docker run --name postgresdb -e POSTGRES_PASSWORD=password -p 5432:5432 -d postgres

###### To see logs use this command:
$ docker logs <containerid>

###### To create volume for persist our information we can execute the -v parameter like this: 
$ docker run --name postgresdb -e POSTGRES_PASSWORD=password -e POSTGRES_DB=sistemaweb -p 5432:5432 -v C:\Users\Usuario\Documents\testing-docker\data\pg:/var/lib/postgresql/data -d postgres

###### In this case I will save the Postgres data into my personal folder but we can create our own volumes. 


###### In order to create the image from our Spring boot project we must create the DockerFile and then execute the next maven comamnd for compiling our artifact:
$ ./mvnw clean package -DskipTests


###### After that we must build the image:
$ docker build -t <user>/<nameimage> . 
###### In my case is this one:
$ docker build -t maikgar10/person-service .


###### After that we can run our container with the image like this:
$ docker run -p 8080:8080 maikgar10/person-service:v1
  
###### Now we need to tag our image and push on docker's repository. For that we need to create a repository in docker hub With the same name of our last image, in our case person-service as next: https://hub.docker.com/r/maikgar10/person-service the next is the command to created the tag like this:
$ docker tag image/person-service maikgar10/person-service:v1

###### Be carefull wit the tag, in my case was v1, you can set other. 

###### And then we push the image associaded to the tag like the next:
$ docker push maikgar10/person-service:v1

###### After that we will have our image in docker hub repository success!



## Utils commands 
```
$ docker container prune  //remove the containers
$ docker volume prune //remove all the volume
$ docker-compose up --build  //to build the container again with all, docker-compose file and refresh Dockerfile configuration
```
