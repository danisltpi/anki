# es - algebra

## (halb)gruppe

eine menge $M$ und eine operation $\circ$ geschrieben als $(M, \circ)$ bilden eine halbgruppe wenn:

- abgeschlossenheit:

  - $x \circ y \in M$
  - für alle $x, y \in M$

- assoziativitaet:
  - $(x \circ y) \circ z = x \circ (y \circ z)$
  - für alle $x, y, z \in M$

sie ist eine gruppe wenn zusaetzlich gilt:

- existenz eines neutralen elements

  - es gibt ein $e \in M$ so dass fuer alle $x \in M$ gilt: $x \circ e = x$

- existenz inverser elemente
  - fuer alle $x \in M$ existiert ein element $x^{-1} \in M$ mit: $x \circ x^{-1} = e$

## kommutative (oder abelsche) gruppe

- wenn eine gruppe zusaetzlich kommutativ ist
- $x \circ y = y \circ x$

## körper

- man schreibt $(M, +, \cdot)$
- menge $M$ mit $+$ und $\cdot$ ist ein körper wenn:
- $(M, +)$ ist eine kommutative gruppe mit 0 als neutralem element
- $(M\setminus{\{0\}}, \cdot)$ ist eine kommutative gruppe
- $+$ und $\cdot$ sind distributiv

## ring

- wir körper aber $(M, \cdot)$ ist eine halbgruppe
- falls $\cdot$ kommutativ, dann ist es ein kommutativer ring
