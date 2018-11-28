#Created a for loop to combine all of the sequences from the 4 transporter files into a single file

for file in transporter*
do 
cat $file >> transportersequences.fasta
echo -e "\n" >> transportersequences.fasta
done

#Created a for loop to combine all of the sequences from the 4 sporecoat files into a single file  

for file in sporecoat* 
do
cat $file >> sporecoatsequences.fasta 
echo -e "\n" >> sporecoatsequences.fasta 
done

#Created a for loop that used the tool "muscle" to align the two newly created sequence files for transporter and sporecoat

for file in  *s.fasta
do
~/muscle3.8.31_i86linux64 -in $file -out $file.align
done
 


