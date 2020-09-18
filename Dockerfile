FROM archlinux

RUN pacman -Syu --noconfirm && pacman -S docker --noconfirm && pacman -Scc --noconfirm

RUN echo $'if [ ! -f .docker_setup_complete ] && [ $DEPTH != 1 ]\nthen\n\t>.docker_setup_complete\n\tdockerd &>/dev/null & disown\n\twhile (! docker stats --no-stream )\n\tdo\n\t\techo "Waiting for Docker to launch..."\n\t\tsleep 1\n\tdone\n\tdocker run --privileged -it -e DEPTH=$((DEPTH-1)) --name arch-all-the-way-down ta180m/arch-all-the-way-down\nfi' > ~root/.bashrc
