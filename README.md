# LaTeX resume templates (English and Korean)

Two one-page LaTeX resume templates built for ATS parsing. Both use dummy data,
so you can replace the text and keep the layout.

- `english/` - English resume
- `korean/` - Korean resume, with Hangul support

## Open on Overleaf (one click)

[![Open English template in Overleaf](https://img.shields.io/badge/Open%20in%20Overleaf-English-47A141?logo=overleaf&logoColor=white)](https://www.overleaf.com/docs?snip_uri=https%3A%2F%2Fraw.githubusercontent.com%2Fviminizer%2Frez%2Fmain%2Foverleaf%2Fresume-template-english.zip&main_document=resume.tex)
[![Open Korean template in Overleaf](https://img.shields.io/badge/Open%20in%20Overleaf-Korean-47A141?logo=overleaf&logoColor=white)](https://www.overleaf.com/docs?snip_uri=https%3A%2F%2Fraw.githubusercontent.com%2Fviminizer%2Frez%2Fmain%2Foverleaf%2Fresume-template-korean.zip&main_document=resume.tex)

Overleaf downloads the template and makes the project for you. Nothing to
save or upload.

## Or upload the ZIP yourself

The same files are in [`overleaf/`](overleaf) if you would rather do it by hand:

1. Download `resume-template-english.zip` or `resume-template-korean.zip`.
2. On Overleaf: **New Project** - **Upload Project**.

Keep the compiler on **pdfLaTeX**. It is the default, and the Korean template
needs it.

`resume.tex` is the main file. Edit the files in `src/` and leave
`resume.tex` and `custom-commands.tex` alone - that is where the styling lives.

If you change anything, run `./make-zips.sh` to rebuild the ZIPs.

## Why these choices

**Libertinus, not Lato.** Lato joins `fi` and `fl` into single glyphs. Words
like `workflow` and `config` then come out of the PDF as `workﬂow` and
`conﬁg`, so a keyword search misses them. Libertinus writes plain letters.

**No icons.** FontAwesome glyphs extract as junk characters (`#`, `§`). Every
field uses a plain text label instead.

**Korean uses Nanum Myeongjo**, a serif, so it matches Libertinus on lines
that mix both scripts.

**Letterspacing is used only in the English template.** With `kotex` loaded,
microtype's `\textls` breaks text extraction - the name comes out as
`M i n j u n K i m`. So the Korean template does not use it.

All of this was checked with `pdftotext` on the built PDFs, not assumed.

## Requirements

pdfLaTeX, plus these TeX Live packages: `libertinus-type1`, `kotex`,
`nanumtype1` (Korean only), `microtype`, `titlesec`, `enumitem`, `fancyhdr`.

## License

MIT. Based on Audric Serador's resume, which builds on
[sb2nov/resume](https://github.com/sb2nov/resume).
