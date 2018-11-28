#usage: bash align.sh
#aligns sequences for bioinformatics purposes

for x in *.fasta
do sed -e '$s/$/\n/' -s sporecoat*.fasta > combinedspores.fasta; sed -e '$s/$/\n/' -s transporter*.fasta > combinedtransporter.fasta
done

/afs/nd.edu/user9/svandext/local/bin/muscle3.8.31_i86linux64 -in combinedspores.fasta -out sporesaligned.afa
/afs/nd.edu/user9/svandext/local/bin/muscle3.8.31_i86linux64 -in combinedtransporter.fasta -out transporteraligned.afa

