FROM microsoft/dotnet:2.1-sdk

MAINTAINER txhsl <teumessian@qq.com>

# Install dependencies:
RUN apt-get update && apt-get install -y \
    libleveldb-dev \
    sqlite3 \
    libsqlite3-dev \
    libunwind8-dev \
    wget \
    expect \
    screen \
    zip \
    vim 

# APT cleanup to reduce image size
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /opt

# Copy source code
ADD neo-cli /opt/neo-cli-github
RUN mkdir neo-cli

WORKDIR /opt/neo-cli-github

# Build the project
RUN dotnet restore
RUN dotnet publish -c Release
RUN cp -r bin/Release/netcoreapp2.1/publish /opt/neo-cli/node1 \
    && cp -r bin/Release/netcoreapp2.1/publish /opt/neo-cli/node2 \
    && cp -r bin/Release/netcoreapp2.1/publish /opt/neo-cli/node3 \
    && cp -r bin/Release/netcoreapp2.1/publish /opt/neo-cli/node4

WORKDIR /opt/neo-cli

# Copy config file
ADD wallets /opt/neo-cli/wallets
ADD configs /opt/neo-cli/configs
ADD scripts /opt/neo-cli/scripts
ADD Plugins /opt/neo-cli/Plugins

RUN mv wallets/1.json node1/1.json \
    && mv wallets/2.json node2/2.json \
    && mv wallets/3.json node3/3.json \
    && mv wallets/4.json node4/4.json \
    && mv configs/config1.json node1/config.json \
    && mv configs/config2.json node2/config.json \
    && mv configs/config3.json node3/config.json \
    && mv configs/config4.json node4/config.json \
    && mv configs/protocol1.json node1/protocol.json \
    && mv configs/protocol2.json node2/protocol.json \
    && mv configs/protocol3.json node3/protocol.json \
    && mv configs/protocol4.json node4/protocol.json \
    && cp -r Plugins node1/Plugins \
    && cp -r Plugins node2/Plugins \
    && cp -r Plugins node3/Plugins \
    && cp -r Plugins node4/Plugins

EXPOSE 10001
EXPOSE 10002
EXPOSE 10003
EXPOSE 20001
EXPOSE 20002
EXPOSE 20003
EXPOSE 30001
EXPOSE 30002
EXPOSE 30003
EXPOSE 40001
EXPOSE 40002
EXPOSE 40003

CMD ["/bin/sh", "/opt/neo-cli/scripts/start.sh"]