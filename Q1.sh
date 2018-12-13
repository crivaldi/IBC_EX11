# This script is for Question 1 of EX11
# Usage: bash Q1.sh

cat gene_sequences/sporecoat01.fasta > gene_sequences/sp.fasta
for sp in gene_sequences/sporecoat0[234].fasta
do
	echo \n >> gene_sequences/sp.fasta
	cat $sp >> gene_sequences/sp.fasta
done 
./bin/muscle -in gene_sequences/sp.fasta -out gene_sequences/sp.align

cat gene_sequences/transporter01.fasta > gene_sequences/tr.fasta
for tr in gene_sequences/transporter0[234].fasta
do
  	echo \n >> gene_sequences/tr.fasta
        cat $tr >> gene_sequences/tr.fasta
done
./bin/muscle -in gene_sequences/tr.fasta -out gene_sequences/tr.align
