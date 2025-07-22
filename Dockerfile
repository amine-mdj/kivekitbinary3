FROM livekit/livekit-server:v1.9.0

COPY livekit.yaml /etc/livekit.yaml

COPY livekit-keys.yaml /etc/livekit-keys.yaml

RUN echo "=== DEBUG: Contents of /etc/livekit.yaml ===" && cat /etc/livekit.yaml

CMD ["livekit-server", "--config", "/etc/livekit.yaml"]
