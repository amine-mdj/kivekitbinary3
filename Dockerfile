# Use an official minimal Linux image
FROM livekit/livekit-server:v1.9.0

# Install dependencies
RUN apt-get update && \
    apt-get install -y curl ca-certificates && \
    rm -rf /var/lib/apt/lists/*

# Set the version you want (change if needed)
ENV LIVEKIT_VERSION=v1.9.0

# Download the LiveKit binary
RUN curl -L https://github.com/livekit/livekit/releases/download/${LIVEKIT_VERSION}/livekit-server-linux-amd64 -o /usr/local/bin/livekit-server && \
    chmod +x /usr/local/bin/livekit-server

# Copy config file (if you have one)
COPY livekit.yaml /etc/livekit.yaml

# Use port 7880 by default
EXPOSE 7880

# Entrypoint
CMD ["livekit-server", "--config", "/etc/livekit.yaml"]
