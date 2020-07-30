FROM archlinux

RUN pacman -Sy --noconfirm

RUN pacman -S docker --noconfirm

RUN echo $'if [ $DEPTH != 1 ]\nthen\n\tdockerd &>/dev/null & disown\n\twhile (! docker stats --no-stream )\n\tdo\n\t\techo "Waiting for Docker to launch..."\n\t\tsleep 1\n\tdone\n\tdocker run --privileged -it -e DEPTH=$((DEPTH-1)) -v /var/run/docker.sock:/var/run/docker.sock --name arch-all-the-way-down ta180m/arch-all-the-way-down\nfi' > ~root/.bashrc
