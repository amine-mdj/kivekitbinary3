# Start from the official LiveKit server image
FROM livekit/livekit-server:v1.9.0

# Copy your config file
COPY livekit.yaml /etc/livekit.yaml

# Expose the default port
EXPOSE 7880

# Run the LiveKit server with your config
CMD ["livekit-server", "--config", "/etc/livekit.yaml"]
