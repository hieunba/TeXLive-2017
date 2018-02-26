# TeX Live-2017 with Pygments and LaTeXML

[![TexLive:2017](https://img.shields.io/badge/TeX%20Live-2017-blue.svg)](https://www.tug.org/texlive/acquire.html)
[![Build Status](https://travis-ci.org/sumandoc/TeXLive-2017.svg?branch=master)](https://travis-ci.org/sumandoc/TeXLive-2017)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) 
[![](https://images.microbadger.com/badges/image/sumdoc/texlive-2017.svg)](https://microbadger.com/images/sumdoc/texlive-2017 "Get your own image badge on microbadger.com")

Contains full TeXLive-2017 with additional [python-pygments library](http://pygments.org/) for source code highlighting via [minted package](https://www.ctan.org/pkg/minted).
Also contains [LateXML](https://dlmf.nist.gov/LaTeXML/) for converting TeX documents into html/xml/mathml and [ImageMagick®](https://www.imagemagick.org/script/index.php) for image manipulation to include in TeX files.


## How to get the image?

From the interactive docker shell, pull this image with:

`docker pull sumdoc/texlive-2017`

## Why should you use it?

If you work with Latex documents, this is useful to compile your document independent of OS and without the need to install anything.  It contains all the compilers: **pdflatex**, **xelatex** and **lualatex**.

## How to run this image/ How do you use it ?

After you are done with the pull, mount the directory present in host operating system containing your .tex files 
into docker image like this:

`docker run -it -v /c/Users/username/Folder_with_tex:/home -w /home sumdoc/texlive-2017 bin/bash`


You will now have access to the terminal. Your working dir is `/home` where you will see the .tex files.

Now run:
`pdflatex -shell-escape -synctex=1 -interaction=nonstopmode yourtex.tex` and see your **yourtex.tex** file getting compiled.


## For converting tex to html with this docker image


Run the  docker container as shown above with `/home` as working directory where your .tex files are located.
I will show an example using `perl6_cheatsheet.tex`(which is present in this repo) which I will convert to `perl6_cheatsheet.html`.

In the shell do `latexml --destination=perl6_cheatsheet.xml perl6_cheatsheet.tex` and then
`latexmlpost --destination=perl6_cheatsheet.html perl6_cheatsheet`.

After this you will see `perl6_cheatsheet.html` in your directory.

---

**Or another easy way** is to use `Makefile`. Execute `make perl6_cheatsheet.html` in command line and you will get html file.



**The size of image is 3 GB** which is quite big but
its ***cool*** with all stuff that's available in **CTAN**. :)


