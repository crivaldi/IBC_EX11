#Build HMM profile for transporter genes using transporterfinal.align
hmmbuild transporterfinal.hmm transporteraligned.align

#Search in HMM for each species
hmmsearch --tblout transArthrobacter.hits transporterfinal.hmm Arthrobacter.fasta
cat transArthrobacter.hits | grep -v "#" | wc -l > transBachits.txt

hmmsearch --tblout transBacillus.hits transporterfinal.hmm Bacillus.fasta
cat transBacillus.hits | grep -v "#" | wc -l >> transBachits.txt

hmmsearch --tblout transClostridium.hits transporterfinal.hmm Clostridium.fasta
cat transClostridium.hits | grep -v "#" | wc -l >> transBachits.txt

hmmsearch --tblout transFlavobacterium.hits transporterfinal.hmm Flavobacterium.fasta
cat transFlavobacterium.hits | grep -v "#" | wc -l >> transBachits.txt

hmmsearch --tblout transLimnohabitans.hits transporterfinal.hmm Limnohabitans.fasta
cat transLimnohabitans.hits | grep -v "#" | wc -l >> transBachits.txt

hmmsearch --tblout transRhizobium.hits transporterfinal.hmm Rhizobium.fasta
cat transRhizobium.hits | grep -v "#" | wc -l >> transBachits.txt

hmmsearch --tblout transRoseobacter.hits transporterfinal.hmm Roseobacter.fasta
cat transRoseobacter.hits | grep -v "#" | wc -l >> transBachits.txt

hmmsearch --tblout transVerrucomicrobia.hits transporterfinal.hmm Verrucomicrobia.fasta
cat transVerrucomicrobia.hits | grep -v "#" | wc -l >> transBachits.txt
