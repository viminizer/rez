**English** | [O'zbekcha](README.uz.md)

# LaTeX resume templates (English and Korean)

Two one-page LaTeX resume templates built for ATS parsing. Both use dummy data,
so you can replace the text and keep the layout.

- `english/` - English resume
- `korean/` - Korean resume, with Hangul support

## Preview

| English | Korean |
|---|---|
| ![English resume preview](previews/english.png) | ![Korean resume preview](previews/korean.png) |

## Open on Overleaf (one click)

[![Open English template in Overleaf](https://img.shields.io/badge/Open%20in%20Overleaf-English-47A141?logo=overleaf&logoColor=white)](https://www.overleaf.com/docs?snip_uri=https%3A%2F%2Fraw.githubusercontent.com%2Fviminizer%2Frez%2Fmain%2Foverleaf%2Fresume-template-english.zip&main_document=resume.tex)
[![Open Korean template in Overleaf](https://img.shields.io/badge/Open%20in%20Overleaf-Korean-47A141?logo=overleaf&logoColor=white)](https://www.overleaf.com/docs?snip_uri=https%3A%2F%2Fraw.githubusercontent.com%2Fviminizer%2Frez%2Fmain%2Foverleaf%2Fresume-template-korean.zip&main_document=resume.tex)

Overleaf downloads the template and makes the project for you. Nothing to
save or upload.

Keep the compiler on **pdfLaTeX**. It is the default, and the Korean template
needs it.

## Or upload the ZIP yourself

The same files are in [`overleaf/`](overleaf) if you would rather do it by hand:

1. Download `resume-template-english.zip` or `resume-template-korean.zip`.
2. On Overleaf: **New Project** - **Upload Project**.

## Or build locally

You need pdfLaTeX and the packages listed under [Requirements](#requirements).
Then:

```bash
cd english   # or korean
pdflatex resume.tex
```

## How to edit

Your content lives in `src/`, one file per section:

| File | Section |
|---|---|
| `src/heading.tex` | Name and contact line |
| `src/summary.tex` | Summary |
| `src/skills.tex` | Technical skills |
| `src/experience.tex` | Work experience |
| `src/projects.tex` | Projects |
| `src/education.tex` | Education |
| `src/languages.tex` | Languages |

Leave `resume.tex` and `custom-commands.tex` alone - that is where the
styling lives. To reorder or drop a section, move or remove its `\input`
line in `resume.tex`.

Keep the result on one page. If it runs over, cut bullets before touching
the font or margins - they are already tuned.

If you change the templates in this repo, run `./make-zips.sh` to rebuild
the Overleaf ZIPs.

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
You can check your own edits the same way:

```bash
pdftotext resume.pdf - | less
```

If a keyword looks wrong there, an ATS sees it wrong too.

## Requirements

pdfLaTeX, plus these TeX Live packages: `libertinus-type1`, `kotex`,
`nanumtype1` (Korean only), `microtype`, `titlesec`, `enumitem`, `fancyhdr`.

On a minimal TeX install (TinyTeX, BasicTeX), install them with:

```bash
tlmgr install libertinus-type1 kotex-utf nanumtype1 microtype titlesec enumitem fancyhdr
```

## License

MIT. Based on Audric Serador's resume, which builds on
[sb2nov/resume](https://github.com/sb2nov/resume).
