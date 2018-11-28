#Built a HMM profile for the transporter gene
  
/afs/nd.edu/user33/slaracha/local/bin/hmmbuild transporter.hmm /afs/nd.edu/user33/slaracha/IBC_EX11/gene_sequences/transportersequences.fasta.align

#Created a for loop to search the eight bacterial proteomes for hits with the transporter gene which were summarized in a table
 
for file in *.fasta
do
/afs/nd.edu/user33/slaracha/local/bin/hmmsearch --tblout $file.tblout /afs/nd.edu/user33/slaracha/IBC_EX11/proteomes/transporter.hmm $file
done

#Created a for loop to report the number of hits found for each bacterial proteome in a newly created file

for file in *.tblout
do 
echo "Number of hits in $file:" >> numberofhits.txt
cat $file | grep -v "#" | wc -l >> numberofhits.txt
done 
