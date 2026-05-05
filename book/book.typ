#import "style.typ": setup
#import "title.typ": title-page
#import "remaker.typ": remaker-page
#import "origin.typ": origin-page

#let title = [游戏王新大师规则]
#let subtitle = [Yu-Gi-Oh! New Master Rule]
#let author = link("https://github.com/warsier", "warsier")
#let remaker = link("https://github.com/arshtyi", "arshtyi")
#let oringin = link("https://warsier.gitbooks.io/new_master_rule/content", "new_master_rule")
#let source = link("https://github.com/arshtyi/ygo_new_master_rule", "ygo_new_master_rule")
#let date = datetime.today()
#let fonts = (
    "IBM Plex Serif",
    "Source Han Serif SC",
    "Noto Serif CJK SC",
    (name: "IBM Plex Mono", covers: "latin-in-cjk"),
)

#title-page(title, subtitle, author, remaker, oringin, source, date, fonts)
#remaker-page(title, author, remaker, oringin, source, date, fonts)
#origin-page(fonts)
#show: setup

#include "ch1.typ"
#include "ch2.typ"
#include "ch3.typ"
#include "ch4.typ"
#include "ch5.typ"
#include "ch6.typ"
#include "ch7.typ"
#include "ch8.typ"
