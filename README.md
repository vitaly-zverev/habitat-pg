## Habitat playground


### Quick Start:
1) Run JupyterLab :
```
 docker run -d  -p 9898:8888  --name=habitat-pg \
 vzverev/habitat-pg:latest
```
2) Get token:
```
docker exec habitat-pg jupyter server list 2>&1 | grep token= | awk -Ftoken= '{print$2}' |  awk -F: '{print$1}'
or
docker logs habitat-pg 2>&1| grep token= | awk -Ftoken= '{print$2}' | tail -1
```
2) Open URL http://${DOCKER_HOST}:9898 in browser:
```
start http://127.0.0.1:9898 (Windows)
...
open http://127.0.0.1:9898  (MacOs, Linux)
```
3) Login with token from #2. and setup required modules (pip install blabla etc):
