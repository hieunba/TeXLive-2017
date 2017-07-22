# TeXLive-2017-with-Pygments
Contains full TexLive-2017 with additional python3-pygments library for source code highlighting via minted package.



## How to run the image 

From the interactive docker shell, pul this image with:

`docker pull this image`


After you are done with the pull, mount the directory in host operating syatem containing your .tex files like this:

`docker run -it -v /c/Users/username/Folder_with_tex:/home docker-image bin/bash`


You will now have access to the terminal.

Change the directory to /home by typing:

`cd /home` where you will see the .tex files in the directory which was mounted.

Now run:
`pdflatex -shell-escape -synctex=1 -interaction=nonstopmode yourtex.tex` and see your "yourtex.tex" file getting compiled.



***Yes. Its awesome!!***


