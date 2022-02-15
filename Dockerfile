FROM ros:galactic-ros-base-focal
RUN apt update && apt-get install -y supervisor bash
RUN echo 'alias s="supervisorctl"' >> ~/.bashrc

WORKDIR /root/config

# RUN git clone https://github.com/tunahanertekin/ros2-onboarding-test -b main

COPY ./scripts .
RUN chmod +x *.sh
RUN rm /etc/supervisor/supervisord.conf
RUN mkdir logs

CMD ["/usr/bin/supervisord", "-c", "/root/config/sup.conf"]