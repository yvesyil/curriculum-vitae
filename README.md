# My Curriculum Vitae (Resume)

## Dependencies

1. LaTeX with the following extra packages: `fontspec` `geometry` `multicol` `xunicode` `xltxtra` `marginnote` `sectsty` `ulem` `hyperref` `polyglossia`
2. [Pandoc](http://pandoc.org/), the universal document converter.
3. UNIX-like environment with Bash-like shell.
4. **Optional**: [Python](https://www.python.org/), if you want to use private fields.
5. Font: [EB Garamond](http://www.georgduffner.at/ebgaramond/index.html) (SIL Open Font License)

## Getting started

**Note**: If you have sensitive information on your cv, you can create `.private` file. Add your sensitive information as follows:

```yaml
phone: "<private phone number>"
email: "<private email address>"
...
private_info: <something private>
```

If you define a string that starts with the `$` in cv.yaml, it will be replaced with the corresponding value defined in `.private` file.

1. Fill `cv.yml` with your personal details, work experience, education, and desired settings.
2. Run `make` to compile the PDF.
3. Tweak on `template.tex` until you're satisfied with the result.

**Note**: This template needs to be compiled with XeTeX.

## Available settings

- **`mainfont`**: Hoefler Text is the default, but every font installed on your system should work out of the box thanks to XeTeX.
- **`fontsize`**: Possible values here are 10pt, 11pt and 12pt.
- **`lang`**: Sets the main language through the `polyglossia` package. This is important for proper hyphenation, among other things.
- **`geometry`**: A string that sets the margins through `geometry`. Read [this](https://www.sharelatex.com/learn/Page_size_and_margins) to learn how this package works.

## Resources

- [TinyTeX](https://yihui.org/tinytex/) is a lightweight, cross-platform, portable, and easy-to-maintain LaTeX distribution based on TeX Live.
- Refer to [pandoc's documentation](http://pandoc.org/MANUAL.html#templates) to learn more about how templates work.
- If you're not familiar with the YAML syntax, [here](http://learnxinyminutes.com/docs/yaml/)'s a good overview.
- If you want to edit the template but LaTeX scares you, these [docs](https://www.sharelatex.com/learn/Main_Page) put together by ShareLaTeX cover most of the basics and are surprisingly kind to the beginner.
- Odds are your question already has an answer on [TeX Stack Exchange](https://www.sharelatex.com/learn/Main_Page). Also, pretty friendly crowd in there.

## License

This repository contains a modified version of Dario Taraborelli's [cvtex](https://github.com/dartar/cvtex) template.

License: [CC BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/)
