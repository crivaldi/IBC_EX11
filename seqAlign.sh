# Exercise 10 : Patricia Portmann
# Aligns the sequences of the "sporecoat" .fasta files
# Aligns the sequences of the "transporter" .fasta files 
# usage: bash seqAlign.sh *.fasta

# appends all the genes from the spore file into one .fasta file
for file in spore*
do
	cat $file >> all_spore.fasta #appends file contents to new .fasta file
	echo >> all_spore.fasta # new line
done

# uses muscle to find sequence alignment in the combined spore file
../muscle3.8.31_i86linux64 -in all_spore.fasta -out all_spore.fasta.align


# appends all the genes from the transporter files into one .fasta file
for file in transporter*
do
	cat $file >> all_transpo.fasta #appends
	echo >> all_transpo.fasta # new line
done

# uses muscle to find sequence alignment in the combined transporter file
../muscle3.8.31_i86linux64 -in all_transpo.fasta -out all_transpo.fasta.align
