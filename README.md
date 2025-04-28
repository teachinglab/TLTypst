# TLTypst

Quarto extension for a template to generate a PDF with (pretty) styling using either Typst. Use `TLTypst-typst` for the format. Note that version 1.4 or greater of Quarto is required.

## Installation and use

To install the Quarto extension, create a directory, and use the template file:

``` bash
quarto use template teachinglab/TLTypst
```

To use the extension in an existing project without installing the template file:

``` bash
quarto install extension teachinglab/TLTypst
```
Note that you will need to update the output format to `format: TLTypst-typst` to enable use of the extension. For book projects, add:

```
project:
  type: TLTypst
```
to the `_quarto.yml` file.

### Logo

Either replace the `logo.png` file with a new file of your choosing, or change the file path in the YAML to point to a different logo file. Note that the file path is relative to your .qmd file.






