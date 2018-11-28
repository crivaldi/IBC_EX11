for filename in *.fasta
do
	echo "$filename" >> HMMSearchResults.txt 
	newname=$(echo "$filename" | sed 's/.fasta/.hits/')
	./hmmsearch --tblout $newname transportermod.hmm $filename
	cat "$newname" | grep -v “#” | sed -E 's/ +/ /g' | cut -d " " -f 12 >> HMMSearchResults.txt
	echo  >> HMMSearchResults.txt
done

