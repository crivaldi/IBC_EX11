#Usage: have gene_sequences in your current directory

for file in ./gene_sequences/*spore*
do
	cat $file >> sporFin.fasta
	echo >> sporFin.fasta
done

for file in ./gene_sequences/*porter*
do
	cat $file >> porteFin.fasta
	echo >> porteFin.fasta
done

../../local/bin/muscle3.8.31_i86linux64 -in sporFin.fasta -out sporFin.fasta
../../local/bin/muscle3.8.31_i86linux64 -in porteFin.fasta -out porteFin.fasta
