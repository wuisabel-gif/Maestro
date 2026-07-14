\version "2.24.0"
\include "../maestro.ily"

% Memento-inspired: the same evidence read in opposite directions.
fact = \relative c' { c8 d ees g f4 d | a'8 g f ees d2 | }
factBackwards = \relative c { d2 ees8 f g a | d,4 f g8 ees d c | }

\header {
  title = "Unreliable Evidence"
  subtitle = "A Memento-inspired reverse cue"
}

\maestroPaper

\score {
  \new PianoStaff <<
    \new Staff \with { instrumentName = "Memory" midiInstrument = "acoustic grand" } {
      \key c \minor \time 4/4
      \tempo 4 = 84
      \maestroHit 0.0 "photograph" { \fact }
      \fact
    }
    \new Staff \with { instrumentName = "Truth" midiInstrument = "acoustic grand" } {
      \clef bass \key c \minor \time 4/4
      \factBackwards
      \maestroHit 9.1 "cause arrives after effect" { \factBackwards }
    }
  >>
  \maestroLayout
  \midi { }
}
