#generates a HMM profile for the transporter gene

../../local/bin/hmmbuild transportergene.hmm ../transporterfiles.fasta.align

#uses HMMer to search the eight bacterial proteomes provided as fasta files
#should record the file name and number of hits to the HMM profile in each
#proteome in a single text file

for file in *.fasta
        do
	../../local/bin/hmmsearch --tblout genehits.txt transportergene.hmm $fi$
        x=$(cat genehits.txt | grep -v '#' | wc-l)
        echo $file,$x >> allhits.txt
        done

