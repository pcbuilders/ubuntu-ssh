FROM       ubuntu:16.10
MAINTAINER lnterface "https://github.com/lnterface/ubuntu-ssh"

ENV AUTHORIZED_KEYS **None**

ADD *.sh /

RUN mkdir -p /var/run/sshd \
    && RUN chmod +x /*.sh \
    && apt-get update \
    && apt-get install -y --no-install-recommends openssh-server pwgen nginx aria2 \
    && sed -ri 's/^PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config \
    && sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && apt-get clean all

EXPOSE 22

CMD ["/run.sh"]
