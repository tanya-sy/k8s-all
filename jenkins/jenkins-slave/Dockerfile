FROM jenkins/jnlp-agent-maven


USER root


COPY docker /usr/local/docker
COPY kubectl /usr/bin/

ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/docker
ENTRYPOINT ["/usr/local/bin/jenkins-agent"]
