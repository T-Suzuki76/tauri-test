# Dockerfile
FROM rust:1.78.0

RUN apt-get update -y && \
    apt-get install -y \
    libwebkit2gtk-4.0-dev \
    build-essential \
    curl \
    wget \
    libssl-dev \
    libgtk-3-dev \
    libayatana-appindicator3-dev \
    librsvg2-dev

# Node.jsをインストール
RUN curl -fsSL https://deb.nodesource.com/setup_21.x | bash -
RUN apt-get install -y nodejs

RUN curl -fsSL https://bun.sh/install | bash