#--------------------------------
#--------------UNIX--------------
             

#--------------WGET--------------

#telecharger des fichiers depuis la console
wget http://cdimage.debian.org/debian-cd/4.0_r5/i386/iso-cd/ debian-40r5-i386-businesscard.iso

^c      # ARRETER LE DL

wget -c http://cdimage...   # REPRENDRE DL

wget --background           # en tache de fond
                            # ou nohup


#--------------SCP--------------


copier des fichiers sur un reseau
SECURE COPY 
# sappuie sur ssh

scp fichier_origine copie_destination
# Chacun de ces éléments peut s'écrire
# login@ip:nom_fichier

# ip
scp image.png mateo21@85.123.10.201:/home/mateo21/images/
# nom d hote
scp image.png mateo21@lisa.simple-it.fr:~/images/
# d un autre ordi vers le notre
scp mateo21@85.123.10.201:image.png copie_image_sur_mon_pc.png
# si port different de 22
scp -P 16296 mateo21@85.123.10.201:image.png


#------------FTP/SFTP------------


#----FTP----
# ***non securisé
FILE TRANSFER PROTOCOLE
dl depuis ftp public        # anonymous
dl depuis ftp privé         # authentifié

#   connexion

ftp ftp.debian.org

# GET PUT

get README                  # DL
put README                  # ENVOI

# telecharger ds le fichier ds lequel j etait
!pwd            # pour voir ou
!cd !ls ...     # ! = requete sur notre ordi hors ftp

# SUPPRIMER
delete

#----SFTP----
# securisé
# sftp repose sur SSH pour sécuriser la connexion
sftp login@ip #ex:
sftp mateo21@lisa.simple-it.fr
# si port different de 22
sftp -oPort=27401 mateo21@serveur

meme commande ds l ensemble

#***
# SUPPRIMER
rm 


#------------RSYNC------------


SYNCHONISER DES FICHIERS POUR UNE SAUVEGARDE
# compare et analyse les différences entre 
# deux dossiers puis copie uniquement les changements


EX : sauvegarder dossier images ds dossier backup

rsync -arv Images/ backups/
-a  # conserve toutes les informations sur les fichiers,
    # comme les droits (chmod), la date de modification, etc
-r  # recursive
-v  # mode verbeux informations sur la copie en cours.


#       SUPPRIMER DES FICHIERS


exemple supprime italie3.jpg
rm Images/italie3.jpg
rsync -arv --delete Images/ backups/
# --DELETE


#       GARDER LES FICHIERS SUPPR


--backup    # Les fichiers supprimés prendront un suffixe
            # dans le répertoire de sauvegarde.

--backup-dir=/chemin/vers/le/repertoire
            # Les fichiers supprimés vont ds se repertoire
            # garde le dossier propre

rsync -arv --delete --backup --backup-dir=/home/mateo21/backups_supprimes Images/ backups/



#   SAUVEGARDER SUR UN AUTRE ORDI

# PAR SSH
rsync -arv --delete --backup --backup-dir=/home/mateo21/fichiers_supprimes Images/ mateo21@IP_du_serveur:mes_backups/
# SI PORT DIFFERENT DE 22
ajouter -e "ssh -p port"
rsync -arv --delete --backup --backup-dir=/home/mateo21/fichiers_supprimes Images/ mateo21@IP_du_serveur:mes_backups/ -e "ssh -p 12473"








