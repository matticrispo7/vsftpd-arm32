FROM arm32v7/alpine:3.12

RUN apk update \
		&& apk upgrade \
		&& apk --update --no-cache add \
				bash \
				vsftpd 

RUN mkdir -p /home/vsftpd/
RUN mkdir -p /var/log/vsftpd
RUN chown -R ftp:ftp /home/vsftpd/

COPY vsftpd-base.conf /etc/vsftpd/vsftpd-base.conf
COPY vsftpd-ftp.conf /etc/vsftpd/vsftpd-ftp.conf
COPY run-vsftpd.sh /usr/sbin/
RUN chmod +x /usr/sbin/run-vsftpd.sh

CMD /usr/sbin/run-vsftpd.sh
