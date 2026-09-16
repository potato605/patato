all: stats.txt report.txt

stats.txt: data.csv stats.py
	python stats.py

report.txt: stats.txt build_report.py report.md
	python build_report.py

clean:
	rm -f stats.txt report.txt

.PHONY: all clean

