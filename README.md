# Arch All the Way Down

#### Ever wanted to run Arch inside Arch inside Arch inside Arch? Well, now you can!

## Usage

```docker pull ta180m/arch-all-the-way-down```

```docker run --privileged -it -e DEPTH=[DEPTH OF NESTED CONTAINERS] ta180m/arch-all-the-way-down /bin/bash```

Remember to replace ```[DEPTH OF NESTED CONTAINERS]``` with your intended nesting depth.
