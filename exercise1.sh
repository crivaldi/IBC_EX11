#To create file to align sporecoat files, first create sporecoatcombined.fasta by doing cat sporecoat01.fasta sporecoat02.fasta sporecoat03.fasta sporecoat04.fasta > sporecoatcombined.fasta and edit it so no sequence line containes >
#To create spore coat alignment
/afs/nd.edu/user5/hstreff/local/bin/muscle3.8.31_i86linux64 -in sporecoatcombined.fasta -out sporecoatalignment.align
#To create file to align transporter files, first create transportercombined.fasta by doing cat transporter01.fasta transporter02.fasta transporter03.fasta transporter04.fasta > transportercombined.fasta
#To create transporter alignment
/afs/nd.edu/user5/hstreff/local/bin/muscle3.8.31_i86linux64 -in transportercombined.fasta -out transporteralignment.align

