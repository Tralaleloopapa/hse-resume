FROM blang/latex:ubuntu
WORKDIR /src
COPY . .
RUN pdflatex resume.tex
