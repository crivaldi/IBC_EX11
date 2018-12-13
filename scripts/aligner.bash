
#script to concatenate and align all files set by homework instructions 

for file in transporter*
do
cat $file >> transporters.fasta
echo -e "\n" >> transporters.fasta
done

echo "transporters.fasta contains" 
cat transporters.fasta | grep -c ">"
echo "sequences"


for file in sporecoat*
do
cat $file >> sporecoats.fasta
echo -e "\n" >> sporecoats.fasta
done


echo "sporecoats.fasta contains"
cat sporecoats.fasta | grep -c ">"
echo "sequences"

for file in *s.fasta
do 
/afs/nd.edu/user33/crivaldi/local/bin/muscle3.8.31_i86linux64 -in $file -out ../alignments/$file.aln
done

