docker-nginx
============

Simple docker image that sets up good default nginx settings and runs
nginx meant for being used behind [kube-lego] in a kubernetes cluster,
which is why it doesn't support SSL since [kube-lego] handles that part
and proxies it to the container.

[kube-lego]: https://github.com/jetstack/kube-lego

Use it in a Dockerfile:

    FROM chrisbuchholz/docker-nginx
    COPY src/ /var/www
    CMD 'nginx'


