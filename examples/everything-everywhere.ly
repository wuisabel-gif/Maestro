\version "2.24.0"
\include "../maestro.ily"

% Everything Everywhere All at Once-inspired: one life, four musical laws.
seed = \relative c' { c8 d e g f e d c | }
mirror = \relative c' { c8 bes aes f g aes bes c | }
primeTime = \relative c' {
  \time 4/4
  \tuplet 5/4 { c8 d e f g } \tuplet 5/4 { a g f e d } |
}
percussionLife = \drummode {
  bd8 sn hh sn bd hh sn bd |
}

\header {
  title = "Ordinary Acts in Parallel"
  subtitle = "An Everything Everywhere All at Once-inspired atlas"
}

\maestroPaper

\score {
  <<
    \new Staff \with { instrumentName = "Original" midiInstrument = "violin" } {
      \time 4/4 \seed \seed
    }
    \new Staff \with { instrumentName = "Mirror" midiInstrument = "viola" } {
      \time 4/4 \mirror \mirror
    }
    \new Staff \with { instrumentName = "Prime" midiInstrument = "flute" } {
      \primeTime \primeTime
    }
    \new DrumStaff \with { instrumentName = "Body" } {
      \time 4/4 \percussionLife \percussionLife
    }
  >>
  \maestroLayout
  \midi { \tempo 4 = 108 }
}
