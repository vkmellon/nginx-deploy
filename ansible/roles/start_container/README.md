# Role to install docker-ce
This role will start docker contaner

## Parameters

| Name                  | Description                                          | Default Value           |
| --------------------- | ---------------------------------------------------- | ----------------------- |
| container_name        | Uname of the Docker container which will be created  | mynginx                 |
| expose_port           | Port number which will be exposed from the container | 8081                    |
| image                 | Docker image that will be used to run container      | vkmellon/mynginx:latest |
| container_port        | Port that container listens                          | 80                      |
