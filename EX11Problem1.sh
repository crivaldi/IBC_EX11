for file in IBC_EX11/gene_sequences/s* 
do
	cat $file>> sporecoatTot.fasta #Cats the files for sporecoat 
	echo \n >> sporecoatTot.fasta #Adds the newline to the end
done
for file in IBC_EX11/gene_sequences/t*
do
	cat $file>> transporterTot.fasta #Cats the files for transporter
	echo \n  >> transporterTot.fasta #Adds the new line to the end
done

./muscle3.8.31_i86linux64 -in sporecoatTot.fasta -out sporecoatTot.align  #creates align for sporecoat
./muscle3.8.31_i86linux64 -in transporterTot.fasta -out transporterTot.align #Creates align for transporter

