# Arch All the Way Down

### It's [Arch all the way down](https://en.wikipedia.org/wiki/Turtles_all_the_way_down)!

#### Ever wanted to run Arch inside Arch inside Arch inside Arch? Well, now you can!

![Nested Arch](https://raw.githubusercontent.com/Ta180m/Arch-All-the-Way-Down/master/nested-arch.png)

## Usage

It's as easy as:

```sh
docker run --privileged -it -e DEPTH=[DEPTH OF NESTED CONTAINERS] ta180m/arch-all-the-way-down
```

Remember to replace `[DEPTH OF NESTED CONTAINERS]` with your intended nesting depth.

You now have `[DEPTH OF NESTED CONTAINERS]` nested Arch containers!
