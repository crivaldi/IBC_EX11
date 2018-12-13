#Usage: To make this part easier, mv porteFin.fasta ../../InsertFilePath from problem one to the same folder where hammer is.
./hmmbuild pt1.fasta porteFin.fasta

for file in ./proteosomes/*
do
echo $file >> ex11_2_script.txt 
./hmmsearch --tblout pt2.hits pt1.fasta $file
cat pt2.hits | grep -v "#" | wc -l >> ex11_2_script.txt
echo >> ex11_2_script.txt
done

