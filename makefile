
.PHONY: backup diff

src_dir := .
backup_dir := backup
diff_dir := diff
aux_dir := .aux

src_files := $(wildcard $(src_dir)/*.tex)
backup_files := $(patsubst $(src_dir)/%.tex, $(backup_dir)/%.tex, $(src_files))
diff_files := $(patsubst $(src_dir)/%.tex, $(diff_dir)/%.tex, $(src_files))
mk := latexmk -pdfxe -auxdir=$(aux_dir)

all: main

main: main.tex
	$(mk)

backup/main: backup/main.tex
	$(mk)

backup: $(backup_dir) $(backup_dir)/$(aux_dir) $(backup_files) $(backup_dir)/$(aux_dir)/main.bbl

$(backup_dir):
	mkdir -p $(backup_dir)

$(backup_dir)/$(aux_dir):
	mkdir -p $(backup_dir)/$(aux_dir)

$(backup_files):
	cp -r $(src_files) $(backup_files)

$(backup_dir)/$(aux_dir)/main.bbl:
	cp -r $(src_dir)/$(aux_dir)/main.bbl $(backup_dir)/$(aux_dir)/main.bbl

diff: $(diff_dir) $(diff_files) $(diff_dir)/$(aux_dir)/main.bbl $(diff_dir)/png $(diff_dir)/pdf

$(diff_dir):
	mkdir -p $(diff_dir)

$(diff_dir)/%.tex: $(src_dir)/%.tex $(backup_dir)/%.tex
	latexdiff --no-del --math-markup=2 $(backup_dir)/$*.tex $(src_dir)/$*.tex > $(diff_dir)/$*.tex

$(diff_dir)/$(aux_dir)/main.bbl: $(src_dir)/$(aux_dir)/main.bbl $(backup_dir)/$(aux_dir)/main.bbl
	latexdiff --no-del $(backup_dir)/$(aux_dir)/main.bbl $(src_dir)/$(aux_dir)/main.bbl > $(diff_dir)/$(aux_dir)/main.bbl

$(diff_dir)/png: | $(diff_dir)
	ln -sf $(abspath png) $@

$(diff_dir)/pdf: | $(diff_dir)
	ln -sf $(abspath pdf) $@

clean:
	latexmk -c -auxdir=$(aux)

cleanall:
	latexmk -C -auxdir=$(aux)
