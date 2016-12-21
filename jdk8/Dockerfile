FROM alpine:latest
MAINTAINER Anupam Basak <anupam.basak@gmail.com>
ENV HTTP_PROXY ${http_proxy}
ENV HTTPS_PROXY ${https_proxy}
RUN apk update
RUN apk add bash openssh openjdk8
RUN mkdir -p ~root/.ssh && chmod 700 ~root/.ssh/ && \
    echo -e "Port 22\n" >> /etc/ssh/sshd_config && \
    cp -a /etc/ssh /etc/ssh.cache && \
    rm -rf /var/cache/apk/*

EXPOSE 22

COPY entry.sh /entry.sh

ENTRYPOINT ["/entry.sh"]

CMD ["/usr/sbin/sshd", "-D", "-f", "/etc/ssh/sshd_config"]
