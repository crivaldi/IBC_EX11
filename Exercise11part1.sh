#First, move all sporecoat fasta files from laptop to remote computer using scp.

#Then, cat all sporecoat fasta files into a single file
cat sporecoat01.fasta sporecoat02.fasta sporecoat03.fasta sporecoat04.fasta > sporecoatmerged.fasta

#Remove '>' using sed and then manually add the first one back in using nano
sed 's/>//g' sporecoatmerged.fasta > sporecoatalignment.fasta

#Next, run muscle command to generate align file and get alignment
muscle3.8.31_i86linux64 -in sporecoatalignment.fasta -out sporecoataligned.align

#The next part is quite similar, as we move all transporter files to remote computer using scp

#Then create final fasta file
cat transporter01.fasta transporter02.fasta transporter03.fasta transporter04.fasta > transportermerged.fasta

#Remove all '>' and then manually add one to the first line using nano
sed 's/>//g' transportermerged.fasta > transporterfinal.fasta

#Lastly, use muscle
muscle3.8.31_i86linux64 -in transporterfinal.fasta -out transporteraligned.align

