% Maestro -- cinematic structures for LilyPond 2.24+

\version "2.24.0"

#(define (maestro-timecode seconds)
   (let* ((minutes (inexact->exact (floor (/ seconds 60))))
          (remaining (- seconds (* minutes 60))))
     (format #f "~2,'0d:~4,1f" minutes remaining)))

maestroScene =
#(define-music-function (title tempo music)
   (string? number? ly:music?)
   #{
     \mark \markup \box \bold #title
     \tempo 4 = #tempo
     #music
     \bar "||"
     \break
   #})

maestroHit =
#(define-music-function (seconds label music)
   (number? string? ly:music?)
   (let ((caption (string-append (maestro-timecode seconds) "  " label)))
   #{
     \textMark \markup \box \column {
       \small #caption
     }
     #music
   #}))

maestroCharacter =
#(define-music-function (name music)
   (string? ly:music?)
   #{
     \textMark \markup \smallCaps #name
     #music
   #})

maestroTransition =
#(define-music-function (label music)
   (string? ly:music?)
   #{
     \textMark \markup \italic #label
     #music
   #})

maestroPaper = \paper {
  tagline = ##f
  ragged-last-bottom = ##t
  system-system-spacing.basic-distance = #18
  top-margin = 14\mm
  bottom-margin = 14\mm
}

maestroLayout = \layout {
  \context {
    \Score
    \override RehearsalMark.break-align-symbols = #'(time-signature key-signature)
    \override RehearsalMark.self-alignment-X = #LEFT
  }
}
