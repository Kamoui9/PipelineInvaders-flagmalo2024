FROM gitlab/gitlab-ce:17.4.5-ce.0

COPY cert/server.crt etc/gitlab/ssl/gitlab.crt
COPY cert/server.key /etc/gitlab/ssl/gitlab.key

ENV DEBIAN_FRONTEND=noninteractive
# Install Terraform
RUN apt-get update && apt-get install -y lsb-release gnupg software-properties-common && \
    wget -O- https://apt.releases.hashicorp.com/gpg | \
    gpg --dearmor | \
    tee /usr/share/keyrings/hashicorp-archive-keyring.gpg && \
    gpg --no-default-keyring \
    --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
    --fingerprint && \
    echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    tee /etc/apt/sources.list.d/hashicorp.list && \
    apt-get update && \
    apt-get install terraform=1.3.4

COPY terraform-gitlab /terraform-gitlab
COPY entrypoint.sh /entrypoint.sh
# RUN chmod +x /entrypoint.sh
RUN dos2unix /entrypoint.sh
COPY repositories /repositories
COPY repositories.sh /repositories.sh
RUN chmod +x /repositories.sh

CMD ["/entrypoint.sh"]