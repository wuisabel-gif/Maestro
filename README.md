<p align="center">
  <img src="docs/assets/maestro-logo.png" alt="Maestro logo - a gold conductor's baton tracing a musical gesture" width="380">
</p>

<h1 align="center">Maestro</h1>

<p align="center">
  A LilyPond-first toolkit for expressing scenes, characters, transitions, and cinematic hit points as music.
</p>

Maestro extends LilyPond with a small embedded Scheme layer. Its movie-inspired examples are ordinary, directly compilable `.ly` scores—there is no separate generator between the composer and the notation.

## Movie studies

- **Arrival** — circular phrases and nonlinear musical memory.
- **Memento** — musical evidence presented forward and backward.
- **Interstellar** — one clock motif stretched across different observers.
- **Everything Everywhere All at Once** — one seed melody under parallel musical laws.
- **Parasite** — a score organized vertically as garden, stairs, and basement.

## Render

With LilyPond 2.24 or newer installed:

```bash
make all
```

Generated PDFs and MIDI files appear in `output/`. Run `make check` to validate every example without printing PDFs.

Read the [full documentation](docs/README.md), [language guide](docs/language.md), or [movie example guide](docs/examples.md).
