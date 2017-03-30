# dnsmasq container

Super small basic container for running dnsmasq

## Running

```
docker run -p 53:53/tcp -p 53:53/udp --cap-add=NET_ADMIN quay.io/vorstella/dnsmasq:v1.0
```
