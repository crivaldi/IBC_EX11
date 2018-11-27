#!/bin/bash
#Marya Poterek

#Question 1

for file in spore*
do
cat $file >> spore_all.fasta
echo  >> spore_all.fasta
done

/Users/mlpoterek/Biocomp/muscle3.8.31_i86darwin32 -in spore_all.fasta -out spore.align

for file in transporter*
do
cat $file >> transporter_all.fasta
echo >> transporter_all.fasta
done

/Users/mlpoterek/Biocomp/muscle3.8.31_i86darwin32 -in transporter_all.fasta -out transporter.align
