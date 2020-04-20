FROM ubuntu:19.10

RUN apt-get update && apt-get install -y \
    prometheus-postfix-exporter

EXPOSE 9154
CMD ["prometheus-postfix-exporter", "-postfix.logfile_path", "/var/lib/prometheus/postfix-exporter/mail.log", "-"]
