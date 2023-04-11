FROM getcarrier/perfmeter:latest-5.5-bak
USER 0
ENV CUSTOM_CA_PATH=/custom.pub
COPY entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]

