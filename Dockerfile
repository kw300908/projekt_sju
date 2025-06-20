ARG VARIANT=3.12-bullseye
FROM mcr.microsoft.com/vscode/devcontainers/python:${VARIANT}

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>

# Jupyter environment + dodatkowe pakiety
RUN pip3 install --disable-pip-version-check --no-cache-dir \
    ipykernel \
    jupyter \
    qiskit \
    matplotlib \
    pillow \
    pycryptodomex \
    cryptography

USER vscode

RUN mkdir -p /home/vscode/workspace
