# Base image
FROM ubuntu

RUN  apt-get update \
  && apt-get install -y wget \
  && apt-get install -y git-all \
  && rm -rf /var/lib/apt/lists/*

COPY quarto-install.sh /quarto-install.sh

RUN chmod +x /quarto-install.sh

ENTRYPOINT [ "/quarto-install.sh" ]
