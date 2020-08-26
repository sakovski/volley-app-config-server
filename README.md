#Building docker image
Before running the following command please build the project: 
> mvn clean install

(If SSH used) Also files (id_rsa, id_rsa.pub, known_hosts) required to access git repository via ssh need to be generated and put into ssh-keys directory.

> docker build -t volley-app-config:latest
#Running the image
The following command is used to run config server image. Please change the values of environment variables (-e option) according to your needs. Keep in mind that "user" is a hardcoded username

> docker run -d --name volley-app-config -p 8888:8888 -m 512M --restart=always -e "SPRING_CLOUD_CONFIG_SERVER_GIT_URI=ssh://git@bitbucket.example.net:port/path/to/repo" -e "SECURITY_USER_NAME=user" -e "SECURITY_USER_PASSWORD=somepassword" volley-app-config:latest
