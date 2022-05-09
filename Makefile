report: Rmd/report.Rmd figs/barchart.png
	Rscript -e "rmarkdown::render('Rmd/report.Rmd')"

figs/barchart.png: R/barchart.R
	Rscript R/barchart.R

restore: renv.lock
  Rscript -e "renv::restore(prompt = FALSE)"

.PHONY: report