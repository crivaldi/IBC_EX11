hmmbuild alignedtransporters transporters.fasta


for a in *.fasta
do
hmmsearch alignedtransporters $a 
done 
