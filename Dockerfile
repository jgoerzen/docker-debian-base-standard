FROM jgoerzen/debian-base-minimal:trixie
LABEL org.opencontainers.image.authors="John Goerzen <jgoerzen@complete.org>"
COPY setup/ /usr/local/debian-base-setup/
RUN /usr/local/debian-base-setup/020-debian-base-standard

COPY preinit/ /usr/local/preinit/
COPY system/exim4.service.d /etc/systemd/system/exim4.service.d

CMD ["/usr/local/bin/boot-debian-base"]

