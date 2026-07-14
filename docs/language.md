# Maestro language layer

Include the library from a LilyPond score:

```lilypond
\include "../maestro.ily"
```

## Scenes

`\maestroScene` gives a passage a boxed scene label, tempo, final barline, and clean system break.

```lilypond
\maestroScene "First Encounter" 64 {
  c4 d e f
}
```

## Hit points

`\maestroHit` attaches a cinematic event and timecode directly to the note where it must occur.

```lilypond
\maestroHit 4.5 "door opens" { g1\ff }
```

The timecode is formatted by Scheme inside `maestro.ily`.

## Characters and transitions

```lilypond
\maestroCharacter "Evelyn" { c4 e g e }
\maestroTransition "memory fractures" { c8 r e r g4 }
```

These commands keep narrative semantics visible in both the source and engraved score while remaining ordinary LilyPond music expressions.
