#!/bin/bash -i
git clone git@github.com:jcmcnch/DARWIN-ASV-plots.git
conda activate jupyter-env
./DARWIN-ASV-plots/scripts/classify-using-prev-data.py DARWIN-ASV-plots/model-classification/GA03-GP13_classifications.tsv 220206_P16N-S_normalized_sequence_counts_reordered.empty-rows-removed.tsv > 220206_P16N-S_normalized_sequence_counts_reordered.empty-rows-removed.GA03-GP13-class.tsv 
