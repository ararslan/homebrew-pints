# homebrew-pints
A pint or two of [Homebrew](https://brew.sh) formulas

To install these formulas, first add this repository as a tap using
```bash
brew tap ararslan/pints
```

## Formulas

The following formulas are ready for use:

* `flisp`: [FemtoLisp](https://github.com/JeffBezanson/femtolisp), a Scheme-like Lisp dialect
* `openlibm`: [OpenLibm](http://www.openlibm.org), a portable C mathematics library
* `wsedit`: [Wyvernscale Source Code Editor](https://github.com/SirBoonami/wsedit), a lightweight,
  terminal-based editor
* `howl`: [Howl](https://howl.io), a lightweight, GUI-based editor (see formula caveats!)

These are deprecated in favor of formulas from other taps:

* Rmath-julia, see instead [staticfloat/juliadeps](https://github.com/staticfloat/homebrew-juliadeps)

## Other notes

I trust Jeff Bezanson implicitly and therefore recommend installing FemtoLisp using
`brew install flisp --HEAD`.
Otherwise there's no guarantee that the release version here will be up to date, as
it's from a fork of the original repository.
