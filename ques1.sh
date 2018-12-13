for x in transporter*
do
(cat "${x}" ; echo) >> transporters.fasta
done

Muscle -in transporters.fasta -out transporters.afa



for x in sporecoat*
do
(cat "${x}"; echo) >> sporecoats.fasta
done

Muscle -in sporecoats.fasta -out sporecoats.afa

