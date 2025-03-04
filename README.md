[`linuxserver/openssh-server`](https://hub.docker.com/r/linuxserver/openssh-server) is pretty cool because it's very configurable via environment vars. but, you can only overwrite the config via volume mounts.

azure container apps make mounting a volume more of a task than i want it to be, especially for something so simple.

this [docker image](https://github.com/David-Lor/Docker-SSH-Port-Forward-Server/tree/main) is pretty much exactly what i want, except it looks abandoned.

the docker image in this repo pulls the latest `linuxserver/openssh-server` and applies a config to allow port forwarding (and nothing else!).

this is then deployed within a vnet in azure container apps to allow authenticated users to use SSH to connect to a database otherwise hidden behind the vnet. it's a similar solution to what's described in [this stackoverflow answer](https://stackoverflow.com/a/77949746/3865600), but since it's based on ACA it can scale to 0 when not in use.
