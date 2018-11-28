hmmbuild aligntransporters transporters.fasta

for x in *.fasta
do
hmmsearch aligntransporters $x
done

