 
/afs/nd.edu/user25/vsanders/local/bin/hmmbuild transporter.hmm gene_sequences/alltrans.align

for file in proteomes/*.fasta
do
/afs/nd.edu/user25/vsanders/local/bin/hmmsearch --tblout $file.hits transporter.hmm $file
done

for hits in proteomes/*.hits
do
echo $hits >> hmm_hits.txt
cat $hits | grep -v "#" | wc -l >> hmm_hits.txt
done 
