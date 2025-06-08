# LearnADA

### ADA's Philosophy

Ada's philosophy is different from most other languages. Underlying Ada's
design are principles that include the following:

- Readability is more important than conciseness. Syntactically this shows
  through the fact that keywords are preferred to symbols, that no keyword is an abbreviation, etc.
- Very strong typing. It is very easy to introduce new types in Ada, with
  the benefit of preventing data usage errors. \* It is similar to many functional languages in that regard, except that
  the programmer has to be much more explicit about typing in Ada,
  because there is almost no type inference.
- Explicit is better than implicit. Although this is a Python
  commandment, Ada takes it way further than any language we know of:
  _There is mostly no structural typing, and most types need to be explicitly
  named by the programmer.
  _ As previously said, there is mostly no type inference.
  _Semantics are very well defined, and undefined behavior is limited to an
  absolute minimum.
  _ The programmer can generally give a lot of information about what their
  program means to the compiler (and other programmers). This allows the
  compiler to be extremely helpful (read: strict) with the programmer.

### In the GNAT toolchain

The Ada standard does not mandate in which file the specification or the
implementation of a subprogram must be stored. In other words, the standard
does not require a specific file structure or specific file name extension.

The GNAT toolchain, however, requires the following file naming scheme:

- Files with the `.ads` extension contain the specification, ----------
- Files with the `.adb` extension contain the implementation.

Therefore, in the GNAT toolchain, the specification of the `Increment`
function must be stored in the `increment.ads` file while its implementation
must be stored in the `increment.adb` file. This rule always applies to
packages.
