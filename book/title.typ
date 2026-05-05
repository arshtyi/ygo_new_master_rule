#let title-page(
    title,
    subtitle,
    author,
    remaker,
    origin,
    source,
    date,
    fonts,
) = {
    set page(paper: "a4", margin: (x: 2.8cm, y: 2.4cm))
    set text(size: 10pt, font: fonts)
    v(1fr)
    align(center)[
        #text(size: 28pt, weight: "bold", title)
        #v(.5em)
        #text(size: 12pt, fill: luma(25%), subtitle)
        #v(2em)
        #line(length: 62%, stroke: luma(45%) + 0.5pt)
        #v(1em)
        #grid(
            columns: (auto, auto),
            column-gutter: 2em,
            row-gutter: .8em,
            align: horizon,
            text(fill: luma(25%))[原作者], author,
            text(fill: luma(25%))[重制], remaker,
            text(fill: luma(25%))[原文], origin,
            text(fill: luma(25%))[项目], source,
            text(fill: luma(25%))[日期], date.display("[year].[month].[day]"),
        )
    ]
    v(1fr)
}
