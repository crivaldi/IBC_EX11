# Exercise 10, Part 2 - Patricia Portmann 
# Step 1: use aligned file made in part 1 transpo.fasta.align
# Step 2: Generate HMM profile for the transporter gene
# Step 3: uses HMMer to search the 8 bacterial proteomes provided as .fasta files
# Step 4: create a single text file that records the file name of the proteome and 
# the number of hits to the HMM profile in each proteome
# usage: bash part2.sh *.fasta

# gets the transporter fasta aligned file from part 1
../../hmmbuild transpo_prof.hmm ../all_transpo.fasta.align

for file in *.fasta
do
	../../hmmsearch --tblout $file.transpo.out transpo_prof.hmm $file
	# looks for the transporter gene in the proteome .fasta file
	# --tblout makes the output file in a tabular format
done

for file in *.transpo.out
do
	a=$(basename $file)
	# fetches the name of the file with the extensions
	b=`basename $a .fasta.transpo.out`
	# purifies the file name
	echo $b >> hit_count.txt
	# appends filename to hit_count.txt
	grep -v '#' $file | wc -l >> hit_count.txt
	# appends # hits 
done
