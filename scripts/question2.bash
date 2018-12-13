#2. Write a shell script that generates a HMM profile for the transporter gene and uses HMMer to search the
#eight bacterial proteomes provided as fasta files. Your script should record the file name and number of hits
#to the HMM profile in each proteome in a single text file


#Build hmmer profile from all transporter fastas (compiled in question 1)
hmmbuild transporters.hmm alignments/transporters.fasta.aln


#Search proteome fastas for matching transporter regions
for file in proteomes/*.fasta
do
hmmsearch --tblout $file.hmmout.tbl transporters.hmm $file
done


#compile number of hits into text
for file in *.tbl
do
echo -e "$file: " >> all.tbl
grep -v "^#" $file | wc -l | cut -d ' ' -f 1 >> all.tbl
echo -e "\n" >> all.tbl
done

