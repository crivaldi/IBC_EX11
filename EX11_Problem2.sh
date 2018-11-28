./local/bin/hmmbuild transporterTot.hmm transporterTot.align  #creates the hmm file
for file in IBC_EX11/proteomes/*.fasta  #for all the files in proteomes
do
./local/bin/hmmsearch --tblout $file.hits transporterTot.hmm $file  #creates a hit file with matches
echo "Number of hits in $(echo "$file") is $(cat $file.hits| grep -v "#"| wc -l)">>Hits_In_File.txt  #tells the file and number of hits
done

