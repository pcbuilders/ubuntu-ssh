FROM       ubuntu:16.10
MAINTAINER lnterface "https://github.com/lnterface/ubuntu-ssh"

RUN mkdir -p /var/run/sshd \
    && apt-get update \
    && apt-get install -y --no-install-recommends openssh-server pwgen dropbear nginx aria2 \
    && sed -ri 's/^PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config \
    && sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config \
    && echo "ClientAliveInterval 5" >> /etc/ssh/sshd_config \
    && echo "ClientAliveCountMax 120" >> /etc/ssh/sshd_config \
    && sed -ri 's/DROPBEAR_PORT=22/DROPBEAR_PORT=443/g' /etc/default/dropbear \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && apt-get clean all

ADD set_root_pw.sh /set_root_pw.sh
ADD run.sh /run.sh
RUN chmod +x /*.sh

ENV AUTHORIZED_KEYS **None**

EXPOSE 22

CMD ["/run.sh"]
