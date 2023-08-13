FROM greyltc/archlinux-aur

RUN echo "%wheel ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/wheel_no_passwd

RUN sed -i 's/^#Color$/Color/' /etc/pacman.conf && \
    sed -i 's/^#BottomUp$/BottomUp/' /etc/paru.conf && \
    echo "SkipReview" >> /etc/paru.conf

RUN pacman -Sy
RUN aur-install bind dogdns

RUN useradd -m -G wheel -s /bin/bash admin
WORKDIR /home/admin
USER admin