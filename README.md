# TeXLive-2017-with-Pygments
Contains full TeXLive-2017 with additional python-pygments library for source code highlighting via minted package.



## How to run this image ?

From the interactive docker shell, pull this image with:

`docker pull suman12029/texlive-2017`


After you are done with the pull, mount the directory present in host operating system containing your .tex files 
into docker image like this:

`docker run -it -v /c/Users/username/Folder_with_tex:/home suman12029/texlive-2017 bin/bash`


You will now have access to the terminal.

Change the directory to /home by typing:

`cd /home` where you will see the .tex files in the directory which was mounted.

Now run:
`pdflatex -shell-escape -synctex=1 -interaction=nonstopmode yourtex.tex` and see your "yourtex.tex" file getting compiled.



***Yes. Its awesome!!***


