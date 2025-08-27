FROM paulgauthier/aider-full:latest
LABEL description="Aider image with PipeWire for virtual audio"
USER root
RUN apt-get update && apt-get install -y \
    pipewire \
    pipewire-audio-client-libraries \
    wireplumber
RUN systemctl enable --user pipewire && systemctl enable --user wireplumber
USER appuser
