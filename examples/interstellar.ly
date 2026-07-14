\version "2.24.0"
\include "../maestro.ily"

% Interstellar-inspired: one motif experienced by three observers.
clockMotif = \relative c' { e8 b' e, b' e, b' e, b' | }
stretchedClock = \relative c' { e2 b' e, b' | }
frozenClock = \relative c' { e1~ | e1 | }

\header {
  title = "Three Observers"
  subtitle = "An Interstellar-inspired time-dilation study"
}

\maestroPaper

\score {
  \new StaffGroup <<
    \new Staff \with { instrumentName = "Earth" midiInstrument = "marimba" } {
      \time 4/4 \tempo 4 = 120
      \repeat unfold 4 { \clockMotif }
    }
    \new Staff \with { instrumentName = "Endurance" midiInstrument = "vibraphone" } {
      \time 4/4
      \repeat unfold 2 { \stretchedClock }
    }
    \new Staff \with { instrumentName = "Gargantua" midiInstrument = "church organ" } {
      \clef bass \time 4/4
      \maestroHit 8.0 "one moment below, years above" { \frozenClock }
      \frozenClock
    }
  >>
  \maestroLayout
  \midi { \tempo 4 = 120 }
}
