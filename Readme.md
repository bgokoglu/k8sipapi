### Login to Docker hub
```shell
> docker login
```

### Create Docker image
```shell
> docker build . -t bgokoglu78/k8sipapi:v1
```

### Run Docker image

```shell
> docker run -p 8085:80 -e ASPNETCORE_URLS=http://+:80 bgokoglu78/k8sipapi:v1
```

### Push Docker image
```shell
> docker push bgokoglu78/k8sipapi:v1
```