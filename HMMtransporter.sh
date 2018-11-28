#!/bin/bash
/afs/nd.edu/user17/asusi/local/bin/hmmbuild transporterAll.hmm transporterAll.fasta.align
for file in proteomes/*.fasta
        do
               /afs/nd.edu/user17/asusi/local/bin/hmmsearch --tblout $file.tbl transporterAll.hmm $file
        done
for file in proteomes/*.tbl
        do
               echo "$file" >> matches.all
               cat $file | grep -v "#" | wc -l | cut -d ' ' -f 1 >> matches.all
	done

