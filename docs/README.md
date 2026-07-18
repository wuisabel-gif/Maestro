<p align="center">
  <img src="assets/maestro-logo.png" alt="Maestro logo - a gold conductor's baton tracing a musical gesture" width="320">
</p>

# Maestro

Maestro is a film-scoring toolkit written primarily in LilyPond and its embedded Scheme language. It treats scenes, character motifs, transitions, and timestamped hit points as native musical structures.

The project deliberately keeps LilyPond at the center: `maestro.ily` is the reusable language layer, and every movie study is a directly executable `.ly` score. There is no separate Python compiler between the composer and LilyPond.

## Render the examples

Install LilyPond 2.24 or newer, then run:

```bash
make all
```

Generated PDFs and MIDI files appear in `output/`. To validate every score without producing PDFs, run `make check`.

## Included cinematic studies

- **Arrival** - circular phrases and nonlinear musical memory.
- **Memento** - musical evidence presented forward and backward.
- **Interstellar** - one clock motif stretched across different observers.
- **Everything Everywhere All at Once** - one seed melody living under parallel musical laws.
- **Parasite** - a score arranged vertically as garden, stairs, and basement.

These are original musical studies inspired by film concepts; they do not reproduce the films' copyrighted scores.

See [language.md](language.md) for the Maestro commands and [examples.md](examples.md) for a guided tour.
