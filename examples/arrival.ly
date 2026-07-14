\version "2.24.0"
\include "../maestro.ily"

% Arrival-inspired: a phrase whose ending already contains its beginning.
louiseMotif = \relative c' {
  d4( a' f e) d( e f a) d,1
}

circularMotif = \relative c' {
  d4( a' f e d e f a) |
  a( f e d e f a d,) |
}

\header {
  title = "Circular Language"
  subtitle = "An Arrival-inspired cue"
}

\maestroPaper

\score {
  \new Staff \with { midiInstrument = "violin" } {
    \key d \minor
    \time 4/4
    \maestroScene "First Encounter" 64 {
      \maestroCharacter "Louise" { \louiseMotif }
      \maestroHit 6.0 "the symbol closes" { \fixed c' { d1\pp } }
    }
    \maestroScene "Nonlinear Memory" 64 {
      \maestroTransition "the end becomes the beginning" { \circularMotif }
      \maestroHit 12.0 "return without arrival" { \fixed c' { d1\fermata } }
    }
  }
  \maestroLayout
  \midi { }
}
