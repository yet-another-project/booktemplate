yapbook.pdf: styles/phpro/titlepage.sty yapbook.cls yapbook.tex
	killall -s 9 xelatex; xelatex yapbook.tex

.PHONY: clean

clean:
	rm -rf *.{out,log,aux,toc}
