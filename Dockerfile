FROM linuxserver/openssh-server:latest

# first remove lines containing these config params, just to keep things a bit cleaner
RUN sed -i '/AllowTcpForwarding/d' /etc/ssh/sshd_config
RUN sed -i '/GatewayPorts/d' /etc/ssh/sshd_config
RUN sed -i '/PermitTTY/d' /etc/ssh/sshd_config

# then add them back in at the end with the values we want.
RUN echo "" | tee -a /etc/ssh/sshd_config
RUN echo "# custom config baked into the docker image by geodav." | tee -a /etc/ssh/sshd_config
RUN echo "AllowTcpForwarding yes" | tee -a /etc/ssh/sshd_config
RUN echo "GatewayPorts yes" | tee -a /etc/ssh/sshd_config
RUN echo "PermitTTY no" | tee -a /etc/ssh/sshd_config
