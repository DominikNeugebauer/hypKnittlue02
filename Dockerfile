FROM ubuntu

RUN useradd -ms /bin/bash --no-log-init user \
	&& sed -i '/^#force_color_prompt=yes$/s/^#//' /home/user/.bashrc
WORKDIR /home/user

RUN yes|unminimize
# RUN apt update && apt install -y git
RUN apt update \
	&& apt install -y man-db less nano \
	&& rm -rf /var/cache/apt/archives

USER user
