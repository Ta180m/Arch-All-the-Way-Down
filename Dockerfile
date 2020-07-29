FROM archlinux

RUN pacman -Syu --noconfirm

RUN pacman -S docker --noconfirm

RUN echo $'if [ $DEPTH > 1 ]\nthen\n\tdockerd & > /dev/null 2>&1\n\tdocker run --privileged -it -e DEPTH=$((DEPTH-1)) --name arch-all-the-way-down ta180m/arch-all-the-way-down\nfi' > ~root/.bashrc
