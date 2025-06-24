FROM debian:10.1

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    texlive-fonts-recommended \
    texlive-generic-recommended \
    texlive-latex-extra \
    texlive-fonts-extra \
    dvipng \
    texlive-latex-recommended \
    texlive-base \
    texlive-pictures \
    texlive-lang-cyrillic \
    texlive-science \
    cm-super \
    texlive-generic-extra \
    make \
    && apt-get clean

WORKDIR /cv

COPY entrypoint.sh .
COPY src ./cv

RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
