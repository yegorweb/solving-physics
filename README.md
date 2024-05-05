= Installation
The easiest method is to import `solving-physics: task` from the `@preview` package:
```typ
#import "@preview/solving-physics:0.1.0": *
```

= Usage
```typ
#task(
  given: [
    $mu = 0.4$ \
    $g = 10$ \
    $m = 20$
  ],
  find: [
    $F$ --- ?
  ],
  fig: image("./example.png", width: 5cm)
)[
  #lorem(100)
]
```
![usage](./example1.svg)

= Stroke
```typ
#task(
  given: [
    $mu = 0.4$ \
    $g = 10$ \
    $m = 20$
  ],
  find: [
    $F$ --- ?
  ],
  stroke: "full"
)[]
```
![full stroke](./example2.svg)

```typ
#task(
  given: [
    $mu = 0.4$ \
    $g = 10$ \
    $m = 20$
  ],
  find: [
    $F$ --- ?
  ],
  stroke: "find"
)[]
```
![find stroke](./example3.svg)

```typ
#task(
  given: [
    $mu = 0.4$ \
    $g = 10$ \
    $m = 20$
  ],
  find: [
    $F$ --- ?
  ],
  stroke: none
)[]
```
![none stroke](./example4.svg)