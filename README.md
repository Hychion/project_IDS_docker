
# STACK
```textmate
Élément	Rôle	IP	Dockerfile
elasticsearch	Base de données logs	172.28.0.10	(officiel)
kibana	Interface graphique	172.28.0.11	(officiel)
logstash	Parse & envoie logs	172.28.0.12	(officiel)
suricata	IDS - détecte attaques	172.28.0.13	(officiel)
kali	Attaquant (nmap, hydra…)	172.28.0.14	Dokerfile.kali
victim	Ubuntu + services & BDD	172.28.0.15	Dockerfile.victim
```

# Creation d'un mots de passe pour le elasticsearch 
docker exec -it elasticsearch bin/elasticsearch-reset-password -u kibana_system -b

docker exec -it elasticsearch bin/elasticsearch-reset-password -u elastic -b
