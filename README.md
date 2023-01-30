# Fasta Header Triming (FHT)

## Requirements:
* optparse
* stringr
* ShortRead
## Installation:
```
install.packages("optparse")
install.packages("stringr")
BiocManager::install("ShortRead)
```
## Usage
```
Rscript FHT.R -Header
Options:
	-i CHARACTER, --input=CHARACTER
		input fasta file

	-o CHARACTER, --output=CHARACTER
		output fasta file

	-h, --help
		Show this help message and exit
        