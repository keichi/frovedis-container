# Frovedis in a container

This repository includes a Dockerfile to build Docker and Singularity images
for running the Frovedis framework.

To build a Docker and a Singularity image:

```
$ docker build -t keichi/frovedis .
$ singularity build frovedis.sif docker-daemon://keichi/frovedis:latest
```

To use the Singularity image:

```
$ singularity shell --bind /var/opt/nec/ve/veos frovedis.sif
$ source /opt/nec/frovedis/ve/bin/veenv.sh
```

Note the current image requires VEOS v2.10.1 or later to be installed on the host.
