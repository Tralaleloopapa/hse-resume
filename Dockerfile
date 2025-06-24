FROM blang/latex:ubuntu
WORKDIR /src
COPY src/resume.tex .
RUN pdflatex resume.tex