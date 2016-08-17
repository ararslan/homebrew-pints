# homebrew-pints
A pint or two of [Homebrew](https://brew.sh) formulas

To install these formulas, first add this repository as a tap using
```bash
brew tap ararslan/pints
```

## Formulas

The following formulas are ready for use:

* `drop`: [Dropt](https://github.com/jamesderlin/dropt), a C library for parsing command line options
* `flisp`: [FemtoLisp](https://github.com/JeffBezanson/femtolisp), a Scheme-like Lisp dialect
* `howl`: [Howl](https://howl.io), a lightweight, GUI-based editor (see formula caveats!)
* `openlibm`: [OpenLibm](http://www.openlibm.org), a portable C mathematics library
* `openspecfun`: [OpenSpecFun](https://github.com/JuliaLang/openspecfun), a library for special
  functions of complex arguments
* `with`: [With](https://github.com/mchav/with), continuous command prefixing using a single tool
* `wsedit`: [Wyvernscale Source Code Editor](https://github.com/SirBoonami/wsedit), a lightweight,
  terminal-based editor

These are deprecated in favor of formulas from other taps:

* Rmath-julia, see instead [staticfloat/juliadeps](https://github.com/staticfloat/homebrew-juliadeps)

## Other notes

I trust Jeff Bezanson implicitly and therefore recommend installing FemtoLisp using
`brew install flisp --HEAD`.
Otherwise there's no guarantee that the release version here will be up to date, as
it's from a fork of the original repository.
