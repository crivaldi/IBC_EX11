#!/bin/bash
#Marya Poterek

#Question 2

/afs/nd.edu/user8/mpoterek/local/bin/hmmbuild transporter.hmm transporter.align

for file in /afs/nd.edu/user8/mpoterek/proteomes/*.fasta
do
/afs/nd.edu/user8/mpoterek/local/bin/hmmsearch --tblout $file.hmm.out transporter.hmm $file
done

for file in /afs/nd.edu/user8/mpoterek/proteomes/*.hmm.out
do
a=$(basename $file)
b=`basename $a .fasta.hmm.out`
echo $b >> hmm_hits.txt
grep -v '#' $file | wc -l >> hmm_hits.txt
done
