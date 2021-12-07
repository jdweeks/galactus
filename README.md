# galactus
Galactus Memory Consumer

### Disclaimer
Do not run this binary natively on your machine. See `Makefile` for building and running a container.

### Expected Output
Running this container should eventually report an OOM kill, i.e.

```
docker run galactus:latest
make: *** [docker-run] Error 137
```