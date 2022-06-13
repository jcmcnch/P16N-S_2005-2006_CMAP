## Steps for processing P16N/S full-community metabarcoding datasets

This repository records notes about how to reproduce the amplicon analysis in `qiime2`, subsequent merging of 16S & 18S rRNA into one unified spreadsheet, and quality control prior to ingestion into CMAP.

- Samples with run063 in the name were originally run on run063 (the Fuhrman lab's idiosyncratic run naming system) but were resequenced together with newly-prepared amplicon samples since the barcodes did not overlap. Therefore, there is no need to separately denoise them per the recommendeations of DADA2 developers.
- For merging of 16S+18S data, the logic is spelled out in the `normalizing_16S_18S_tags` subfolder.
- Others wanting to reuse these data should note that trim lengths were 220 (fwd) / 180 (rev). The 18S sequences do not overlap, so they will be 220 + 180 = 400 bp. 16S sequences are merged, and therefore are more variable reflecting the underlying biological length differences.
