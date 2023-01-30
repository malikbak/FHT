#!/usr/bin/env Rscript
library("optparse")

option_list = list(
  make_option(c("-i", "--input"), type="character", default=NULL, 
              help="input fasta file", metavar="character"),
  make_option(c("-o", "--output"), type="character", default=NULL, 
              help="output fasta file", metavar="character")
); 

opt_parser = OptionParser(option_list=option_list);
opt = parse_args(opt_parser);
if (is.null(opt$input)){
  print_help(opt_parser)
  stop("All 2 argument must be supplied (input file).n", call.=FALSE)
}
library(ShortRead)
library(stringr)
NK_lysin <- readFasta(opt$input)
ids <- as.data.frame(NK_lysin@id)
id <- word(ids$x, 1)
id <- BStringSet(id)
NK_lysin@id <- id
writeFasta(NK_lysin, opt$output)
