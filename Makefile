clean:
	find . -name '*.aux' -delete
	find . -name '*.log' -delete
	find . -name '*.out' -delete
	find . -name '*.synctex.gz' -delete

clean_all: clean
	find . -name '*.pdf' -delete
