for sc in gene_sequences/sporecoat0[1234].fasta
do
cat $sc >> gene_sequences/allsc.fasta
echo \n >> gene_sequences/allsc.fasta
done

/afs/nd.edu/user25/vsanders/local/bin/muscle3.8.31_i86linux64 -in gene_sequences/allsc.fasta -out gene_sequences/allsc.align 

for trans in gene_sequences/transporter0[1234].fasta
do
cat $trans >> gene_sequences/alltrans.fasta
echo \n >> gene_sequences/alltrans.fasta
done

/afs/nd.edu/user25/vsanders/local/bin/muscle3.8.31_i86linux64 -in gene_sequences/alltrans.fasta -out gene_sequences/alltrans.align

