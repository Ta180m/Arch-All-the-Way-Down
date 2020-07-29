FROM archlinux

RUN pacman -Syu --noconfirm

RUN pacman -S docker --noconfirm

RUN echo $'if [ $DEPTH > 1 ] \n dockerd | docker run --privileged -it -e DEPTH=$((DEPTH+1)) --name arch-all-the-way-down ta180m/arch-all-the-way-down /bin/bash \n fi' > ~root/.bashrc