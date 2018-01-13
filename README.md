# TeXLive-2017-with-Pygments-and-LaTeXML

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Contains full TeXLive-2017 with additional python-pygments library for source code highlighting via minted package.
Also contains LateXML for converting TeX documents into html/xml/mathml.


## How to get the image?

From the interactive docker shell, pull this image with:

`docker pull sumdoc/texlive-2017`

## Why should you use it?

If you work with Latex documents, this is useful to compile your document.  It contains all the compilers: **pdflatex**, **xelatex** and **lualatex**.

## How to run this image/ How do you use it ?

After you are done with the pull, mount the directory present in host operating system containing your .tex files 
into docker image like this:

`docker run -it -v /c/Users/username/Folder_with_tex:/home suman12029/texlive-2017 bin/bash`


You will now have access to the terminal.

Change the directory to /home by typing:

`cd /home` where you will see the .tex files in the directory which was mounted.

Now run:
`pdflatex -shell-escape -synctex=1 -interaction=nonstopmode yourtex.tex` and see your "yourtex.tex" file getting compiled.


## For converting tex to html with this docker image
---

Run the  docker container as shown above and change the directory to /home where your .tex files are located.
I will show an example using `perl6_cheatsheet.tex`(which is present in this repo) which I will convert to `perl6_cheatsheet.html`.

In the shell do `latexml --destination=perl6_cheatsheet.xml perl6_cheatsheet.tex` and then
`latexmlpost --destination=perl6_cheatsheet.html perl6_cheatsheet`.

After this you will see `perl6_cheatsheet.html` in your directory.

---

**Or another easy way** is to use `Makefile`. Execute `make perl6_cheatsheet.html` in command line and you will get html file.

---

**The size of image after docker pull is 5.47 GB** which is quite big but
***Yes, Its awesome!!***


