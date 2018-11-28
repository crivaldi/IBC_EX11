# Exercise 10, Part 2 - Patricia Portmann 
# Step 1: use aligned file made in part 1 transpo.fasta.align
# Step 2: Generate HMM profile for the transporter gene
# Step 3: uses HMMer to search the 8 bacterial proteomes provided as .fasta files
# Step 4: create a single text file that records the file name of the proteome and 
# the number of hits to the HMM profile in each proteome
# usage: bash part2.sh *.fasta


../../hmmbuild transpo_prof.hmm ../all_transpo.fasta.align

for file in *.fasta
do
	../../hmmsearch --tblout $file._transpo.txt transpo_prof.hmm $file
done

for file in *._transpo.txt
do
	echo $file >> hit_count.txt
	grep -v '#' $file | wc -l >> hit_count.txt
done
