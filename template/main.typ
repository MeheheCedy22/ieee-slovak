// #import "@preview/ieee-slovak:0.1.0": ieee
#import "../lib.typ": ieee

#show: ieee.with(
  title: [Názov článku na konferenciu vo formáte IEEE],
  abstract: [
    #lorem(60)
  ],
  authors: (
    (
      name: "Janko Mkrvička",
      department: [Fakulta],
      organization: [Univerzita],
      location: [Bratislava, Slovensko],
      email: "janko@mrkvicka.sk"
    ),
    (
      name: "Peter Milan",
      department: [Fakulta],
      organization: [Univerzita],
      location: [Bratislava, Slovensko],
      email: "peter@milan.sk"
    ),
  ),
  index-terms: ("Kľúčové", "slová", "článku"),
  bibliography: bibliography("refs.bib"),
)

= Nadpis 1 úrovne
#lorem(60) @example.

== Nadpis 2 úrovne <sec:heading2>
#lorem(60) @fig:circle.

#figure(
  placement: none,
  circle(radius: 15pt),
  caption: [Kružnica]
) <fig:circle>

#lorem(60) @sec:heading2.

=== Nadpis 3 úrovne
#lorem(30)

=== Druhý Nadpis 3 úrovne
#lorem(30)


#figure(
  caption: [Mená a vek ľudí],
  placement: top,
  table(
    // Table styling is not mandated by the IEEE. Feel free to adjust these
    // settings and potentially move them into a set rule.
    columns: (6em, auto),
    align: (left, right),
    inset: (x: 8pt, y: 4pt),
    // stroke: (x, y) => if y <= 1 { (top: 0.5pt) },
    fill: (x, y) => if y > 0 and calc.rem(y, 2) == 0  { rgb("#efefef") },

    table.header[*Meno*][*Vek*],
   [Ján], [25],
    [Eva], [30],
    [Peter], [45],
    [Mária], [35],
    [Tomáš], [50],
    [Anna], [40],
    [Michal], [55],
    [Zuzana], [60],
  )
) <tab:name_ages>

#lorem(60) @tab:name_ages.

= Záver
#lorem(60)

= Poďakovanie
#lorem(30)

