FROM nginx:1.26.3

ARG USER=nginx
ARG HOMEDIR=/home/${USER}

# Set timezone to Asia/Tokyo
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# Set default shell
RUN chsh -s /bin/bash ${USER}

# Create Nginx systemd service
COPY --chown=${USER}:${USER} nginx.conf /etc/nginx/nginx.conf
