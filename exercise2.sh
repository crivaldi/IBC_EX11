#To run use bash exercise2.sh
#Make transporteralignment.align into transporteralignment.hmm
/afs/nd.edu/user5/hstreff/local/bin/hmmbuiansporteralignment.hmm transporteralignment.align
#Determine number of hits with Arthrobacter
echo "transporterArthrobacter.hits" > transporterhits.txt
/afs/nd.edu/user5/hstreff/local/bin/hmmsearch --tblout transporterArthrobacter.hits transporteralignment.hmm Arthrobacter.fasta
cat transporterArthrobacter.hits | grep -v "#" | wc -l >> transporterhits.txt
#Determine number of hits with Bacillus
echo "transporterBacillus.hits" >> transporterhits.txt
/afs/nd.edu/user5/hstreff/local/bin/hmmsearch --tblout transporterBacillus.hits transporteralignment.hmm Bacillus.fasta
cat transporterBacillus.hits | grep -v "#" | wc -l >> transporterhits.txt
#Determine number of hits with Clostridium
echo "transporterClostridium.hits" >> transporterhits.txt
/afs/nd.edu/user5/hstreff/local/bin/hmmsearch --tblout transporterClostridium.hits transporteralignment.hmm Clostridium.fasta
cat transporterClostridium.hits | grep -v "#" | wc -l >> transporterhits.txt
#Determine number of hits with Flavobacterium
echo "transporterFlavobacterium.hits" >> transporterhits.txt
/afs/nd.edu/user5/hstreff/local/bin/hmmsearch --tblout transporterFlavobacterium.hits transporteralignment.hmm Flavobacterium.fasta
cat transporterFlavobacterium.hits | grep -v "#" | wc -l >> transporterhits.txt
#Determine number of hits with Limnohabitans
echo "transporterLimnohabitans.hits" >> transporterhits.txt
/afs/nd.edu/user5/hstreff/local/bin/hmmsearch --tblout transporterLimnohabitans.hits transporteralignment.hmm Limnohabitans.fasta
cat transporterLimnohabitans.hits | grep -v "#" | wc -l >> transporterhits.txt
#Determine number of hits with Rhizobium
echo "transporterRhizobium.hits" >> transporterhits.txt
/afs/nd.edu/user5/hstreff/local/bin/hmmsearch --tblout transporterRhizobium.hits transporteralignment.hmm Rhizobium.fasta
cat transporterRhizobium.hits | grep -v "#" | wc -l >> transporterhits.txt
#Determine number of hits with Roseobacter
echo "transporterRoseobacter.hits" >> transporterhits.txt
/afs/nd.edu/user5/hstreff/local/bin/hmmsearch --tblout transporterRoseobacter.hits transporteralignment.hmm Roseobacter.fasta
cat transporterRoseobacter.hits | grep -v "#" | wc -l >> transporterhits.txt
#Determine number of hits with Verrucomicrobia
echo "transporterVerrucomicrobia.hits" >> transporterhits.txt
/afs/nd.edu/user5/hstreff/local/bin/hmmsearch --tblout transporterVerrucomicrobia.hits transporteralignment.hmm Verrucomicrobia.fasta
cat transporterVerrucomicrobia.hits | grep -v "#" | wc -l >> transporterhits.txt
