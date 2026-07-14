\version "2.24.0"
\include "../maestro.ily"

% Parasite-inspired: orchestration is organized as architecture.
upperHouse = \relative c'' { g4\p b d b | a c e c | }
stairs = \relative c' { g8 fis f e ees d des c | }
basement = \relative c { c2\pp ges | c,1 | }

\header {
  title = "The House Has Vertical Harmony"
  subtitle = "A Parasite-inspired architectural score"
}

\maestroPaper

\score {
  \new StaffGroup <<
    \new Staff \with { instrumentName = "Garden" midiInstrument = "flute" } {
      \key c \major \time 4/4
      \upperHouse \upperHouse
    }
    \new Staff \with { instrumentName = "Stairs" midiInstrument = "viola" } {
      \clef alto \key c \minor \time 4/4
      R1 | \maestroHit 4.0 "descent begins" { \stairs } \stairs
    }
    \new Staff \with { instrumentName = "Basement" midiInstrument = "contrabass" } {
      \clef bass \key c \minor \time 4/4
      R1*2 | \basement
    }
  >>
  \maestroLayout
  \midi { \tempo 4 = 72 }
}
