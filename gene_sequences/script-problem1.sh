#usage: bash script-problem1.sh
#origin directory /afs/nd.edu/user30/poneil1/local/bin/IBC_EX11/gene_sequences

#run each transporter file into an aligned sequence of their own and...
#...combine these sequences into a single fasta file
for transporter in transporter*.fasta
do
  	../../muscle -in $transporter -out transporterout.fasta
        cat transporterout.fasta >> transporter-combined.fasta
done
#run the combined fasta file through muscle to align for final sequence
../../muscle -in transporter-combined.fasta -out transporter-final.fasta

#run each sporecoat file into an aligned sequence of their own and...
#...combine these sequences into a single fasta file
for sporecoat in sporecoat*
do
  	../../muscle -in $sporecoat -out sporecoatout.fasta
        cat sporecoatout.fasta >> sporecoat-combined.fasta
done

#run the combined fasta file through muscle to align for final sequence
../../muscle -in sporecoat-combined.fasta -out sporecoat-final.fasta
