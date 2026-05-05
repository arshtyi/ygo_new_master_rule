#let body-title = [游戏王新大师规则]
#let ink = luma(18%)
#let muted = luma(32%)
#let rule = luma(58%)
#let pale = luma(96%)
#let current-page-level-one = context {
    let page = here().page()
    let headings = query(heading.where(level: 1)).filter(it => it.location().page() == page)
    if headings.len() > 0 { headings.first().body }
}

#let setup(it) = {
    set page(
        paper: "a4",
        header: context {
            set text(8.5pt, fill: muted)
            grid(
                columns: (1fr, auto, 1fr),
                align: horizon,
                current-page-level-one, body-title, [],
            )
            v(-.4em)
            line(length: 100%, stroke: rule + .45pt)
        },
        footer: context {
            set align(center)
            set text(9pt, fill: muted)
            counter(page).display("1 / 1", both: true)
        },
    )
    counter(page).update(1)
    set text(size: 10.5pt, fill: ink, lang: "zh", region: "CN", font: "Source Han Serif SC")
    set par(
        justify: true,
        leading: .65em,
        spacing: 1.05em,
        first-line-indent: (amount: 2em, all: true),
    )
    set heading(numbering: "1.1.1.1")
    show heading: it => block(it.body)
    show heading.where(level: 1): pagebreak() + []
    set underline(stroke: .05em, offset: .3em, evade: true)
    show link: underline
    it
}
