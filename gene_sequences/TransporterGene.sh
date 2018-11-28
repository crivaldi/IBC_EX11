#!/bin/bash
for file in transporter0*.fasta
	do
		sed -e '$s/$/\n/' $file
	done > transporterAll.fasta
