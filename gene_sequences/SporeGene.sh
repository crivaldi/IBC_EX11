#!/bin/bash
for file in sporecoat0*.fasta
	do
		sed -e '$s/$/\n/' $file
	done > sporecoatAll.fasta
