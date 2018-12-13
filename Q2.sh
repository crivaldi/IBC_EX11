# This script is for Question 2 of EX11
# Usage: bash Q2.sh

# build a HMM profile for the transporter gene
./bin/hmmbuild proteomes/tr.hmm gene_sequences/tr.align

# search the hits to HMM profile
for bp in proteomes/*.fasta
do
	./bin/hmmsearch --tblout ${bp%.*}.hits proteomes/tr.hmm $bp
done

# count for number of hits
echo "Number of hits to the HMM profile in each proteome:" > proteomes/hit_counts.txt
for hits in proteomes/*.hits
do
	echo ${hits##*/} >> proteomes/hit_counts.txt
	cat $hits | grep -v "#" | wc -l >> proteomes/hit_counts.txt
done
