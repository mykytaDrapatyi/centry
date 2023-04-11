FROM getcarrier/lambda:python3.7-bak
USER 0
RUN yum install -y util-linux
ENV PIP_CERT=/etc/ssl/certs/ca-bundle.crt
ENV CUSTOM_CA_PATH=/custom.pub
COPY entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]

