#Code to create sequence alignments

#Code to combine files: cat sporecoat01.fasta sporecoat02.fast sporecoat03.fasta sporecoat04.fasta > sporecoatfiles.fasta
#Code to combine files: cat transporter01.fasta transporter02.fasta transporter03.fasta transporter04.fasta > transporterfiles.fasta

#Code to secure copy to remote: scp sporecoatfiles.fasta jhummel@remote103.helios.nd.edu:/afs/nd.edu/user20/jhummel
#Code to secure copy to remote: scp transporterfiles.fasta jhummel@remote103.helios.nd.edu:/afs/nd.edu/user20/jhummel

#Move file to Exercise folder: mv sporecoatfiles.fasta Exercise
#Move file to Exercise folder: mv transporterfiles.fasta Exercise

[jhummel@remote103 ~]$ ls
11            hmmer-3.2.1.tar          muscle3.8.31_i86linux64.tar  www
Biocomputing  Lecture21files           Private
Exercise      local                    Public
hmmer-3.2.1   muscle3.8.31_i86linux64  Tutorial12files.tar
[jhummel@remote103 ~]$ cd Exercise/
[jhummel@remote103 ~/Exercise]$ ls
sporecoatfiles.fasta  transporterfiles.fasta
[jhummel@remote103 ~/Exercise]$ nano sporecoatfiles.fasta 
[jhummel@remote103 ~/Exercise]$ nano transporterfiles.fasta 

#Above, I used nano to edit each file - by using cat to combine the files
#some of the line breaks were not correct. I went through the lines and
#pressed enter when there was a > in the middle of the code
#the muscle tool was then used to make aligned files for sporecoat and
#transporter

[jhummel@remote103 ~/Exercise]$ ls
sporecoatfiles.fasta  transporterfiles.fasta
[jhummel@remote103 ~/Exercise]$ ../muscle3.8.31_i86linux64 -in sporecoatfiles.fasta -out sporecoatfiles.fasta.align

MUSCLE v3.8.31 by Robert C. Edgar

http://www.drive5.com/muscle
This software is donated to the public domain.
Please cite: Edgar, R.C. Nucleic Acids Res 32(5), 1792-97.

sporecoatfiles 26 seqs, max length 152, avg  length 138
00:00:00     10 MB(1%)  Iter   1  100.00%  K-mer dist pass 1
00:00:00     10 MB(1%)  Iter   1  100.00%  K-mer dist pass 2
00:00:00     14 MB(1%)  Iter   1  100.00%  Align node       
00:00:00     14 MB(1%)  Iter   1  100.00%  Root alignment
00:00:00     14 MB(1%)  Iter   2  100.00%  Refine tree   
00:00:00     14 MB(1%)  Iter   2  100.00%  Root alignment
00:00:00     14 MB(1%)  Iter   2  100.00%  Root alignment
00:00:00     14 MB(1%)  Iter   3  100.00%  Refine biparts
00:00:00     14 MB(1%)  Iter   4  100.00%  Refine biparts
00:00:00     14 MB(1%)  Iter   5  100.00%  Refine biparts
00:00:00     14 MB(1%)  Iter   6  100.00%  Refine biparts
00:00:00     14 MB(1%)  Iter   7  100.00%  Refine biparts
00:00:00     14 MB(1%)  Iter   8  100.00%  Refine biparts
00:00:00     14 MB(1%)  Iter   9  100.00%  Refine biparts
00:00:00     14 MB(1%)  Iter  10  100.00%  Refine biparts
[jhummel@remote103 ~/Exercise]$ ls
sporecoatfiles.fasta  sporecoatfiles.fasta.align  transporterfiles.fasta
[jhummel@remote103 ~/Exercise]$ nano spo
sporecoatfiles.fasta        sporecoatfiles.fasta.align 
[jhummel@remote103 ~/Exercise]$ nano sporecoatfiles.fasta.align 
[jhummel@remote103 ~/Exercise]$ ../
11/                      Lecture21files/          Public/
Biocomputing/            local/                   www/
Exercise/                muscle3.8.31_i86linux64* 
hmmer-3.2.1/             Private/                 
[jhummel@remote103 ~/Exercise]$ ../muscle3.8.31_i86linux64 -in transporterfiles.fasta -out transporterfiles.fasta.align

MUSCLE v3.8.31 by Robert C. Edgar

http://www.drive5.com/muscle
This software is donated to the public domain.
Please cite: Edgar, R.C. Nucleic Acids Res 32(5), 1792-97.

transporterfiles 4 seqs, max length 412, avg  length 410
00:00:00     10 MB(1%)  Iter   1  100.00%  K-mer dist pass 1
00:00:00     10 MB(1%)  Iter   1  100.00%  K-mer dist pass 2
00:00:00     13 MB(1%)  Iter   1  100.00%  Align node       
00:00:00     13 MB(1%)  Iter   1  100.00%  Root alignment
00:00:00     13 MB(1%)  Iter   2  100.00%  Root alignment
00:00:00     13 MB(1%)  Iter   3  100.00%  Refine biparts
00:00:00     13 MB(1%)  Iter   4  100.00%  Refine biparts
00:00:00     13 MB(1%)  Iter   5  100.00%  Refine biparts
00:00:00     13 MB(1%)  Iter   6  100.00%  Refine biparts
00:00:00     13 MB(1%)  Iter   7  100.00%  Refine biparts
00:00:00     13 MB(1%)  Iter   8  100.00%  Refine biparts
00:00:00     13 MB(1%)  Iter   9  100.00%  Refine biparts
00:00:00     13 MB(1%)  Iter  10  100.00%  Refine biparts
00:00:00     13 MB(1%)  Iter  11  100.00%  Refine biparts
00:00:00     13 MB(1%)  Iter  12  100.00%  Refine biparts
00:00:00     13 MB(1%)  Iter  13  100.00%  Refine biparts
00:00:00     13 MB(1%)  Iter  14  100.00%  Refine biparts
[jhummel@remote103 ~/Exercise]$ 

