#let remaker-page(
    title,
    author,
    remaker,
    origin,
    source,
    date,
    fonts,
) = {
    set underline(stroke: .05em, offset: .3em, evade: true)
    show link: underline
    let typst-color = rgb("#239DAD")
    let Typst = text(fill: typst-color, weight: "bold", "Typst")
    set text(size: 10.5pt, lang: "zh", region: "CN", font: fonts)
    v(1fr)
    align(center)[
        #text(size: 22pt)[重制说明]
    ]
    v(.8em)
    set par(justify: false, first-line-indent: (amount: 2em, all: true))
    [
        本文档使用#Typst 重制了由#author 制作的#origin，并在其基础上补充了2020年的#link("https://www.yugioh-card.com/japan/howto/masterrule2020", "修订")。本文档将尽可能少地改动原文档的内容并尽量完善之。

        您可以前往#source 查看本项目源代码。如果发现错误，也欢迎提交给作者。
    ]
    v(3fr)
    pagebreak()
}
