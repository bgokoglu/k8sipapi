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

---

### Install kubectl
```shell
> brew install kubectl
```
```shell
> kubectl version --client
```
```shell
> kubectl cluster-info
```

### Run pods
```shell
> kubectl apply -f deployment.yaml
```

```shell
> kubectl get all
```

```shell
> kubectl delete -f deployment.yaml
```