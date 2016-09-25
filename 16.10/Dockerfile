FROM       ubuntu:16.10
MAINTAINER lnterface "https://github.com/lnterface/ubuntu-ssh"

RUN apt-get update && \
    apt-get install -y openssh-server && \
    apt-get clean all
    
RUN mkdir /var/run/sshd

RUN echo 'root:toor' |chpasswd

RUN sed -ri 's/^PermitRootLogin no/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/^PermitRootLogin prohibit-password no/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
