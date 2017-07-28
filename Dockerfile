FROM debian:testing
MAINTAINER Dr Suman Khanal <suman81765@gmail.com>
LABEL updated_at '2017-07-26'
RUN apt-get update \
  && apt-get install -y gnupg wget curl libgetopt-long-descriptive-perl libdigest-perl-md5-perl python python-pygments
WORKDIR /usr/local/src
RUN curl -sL http://mirror.utexas.edu/ctan/systems/texlive/tlnet/install-tl-unx.tar.gz | tar zxf - && mv install-tl-20* install-tl

WORKDIR install-tl
RUN echo "selected_scheme scheme-full" > profile \
  && ./install-tl -repository http://mirror.utexas.edu/ctan/systems/texlive/tlnet -profile profile
WORKDIR /
ENV PATH /usr/local/texlive/2017/bin/x86_64-linux:$PATH
RUN apt-get install -y latexml
CMD ["tlmgr", "--version"]
