#let note-box(body) = block(
    width: 100%,
    inset: (x: 0.75em, y: 0.55em),
    fill: rgb("#fbf4f5"),
    stroke: (left: 4pt + rgb("#9c0b15"), rest: 0.6pt + rgb("e6c2c4")),
    radius: 4pt,
    {
        set par(first-line-indent: 0em)
        parbreak()
        body
    },
)
