FROM linuxserver/openssh-server:latest

# Copy custom SSH configuration file into the image
COPY sshd_config /etc/ssh/sshd_config
