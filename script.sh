for a in sporecoat*
do
(cat "${a}"; echo) >> spores.afasta
done

muscle -in spores.fasta -out spores.afasta

for b in transporter*
do
(cat "${a}"; echo) >> transporter.fasta

muscle -in transporter.fasta -out transporter.afasta
