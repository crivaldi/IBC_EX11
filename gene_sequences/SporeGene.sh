#!/bin/bash
for file in sporecoat0*.fasta
        do
		sed -e '$s/$/\n/' $file
	done > sporecoatAll.fasta
for file in transporter0*.fasta
	do
		sed -e '$s/$/\n/' $file						       
	done > transporterAll.fasta

for file in *All.fasta
	do
	        /afs/nd.edu/user17/asusi/local/bin/muscle -in $file -out /afs/nd.edu/user17/asusi/local/bin/IBC_EX11/$file.align
	done

