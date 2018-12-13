#Usage: bash script-problem2.sh
#HMMer searches each transporter fasta with each proteome fasta
#initial working directory: gene_sequences
for transporter in transporter0*.fasta
        do
          	for proteome in ../proteomes/*
                        do
                          	echo $transporter >> sequence-hits.txt
                                echo $proteome >> sequence-hits.txt
                                ../../hmmbuild transporter.hmm $transporter
                                ../../hmmsearch transporter.hmm $proteome | grep$
                        done
        done

