#--------------------------------
#--------------UNIX--------------
             

#-------------SCRIPT-------------

#           SHELL

sh->Bourne Shell            # L'ancêtre de tous les shells.
bash->Bourne Again Shell    # Une amélioration du Bourne Shell,
                            # par défaut Linux et Mac OS X.
ksh->Korn Shell             # Un shell puissant assez présent sur
                            # les Unix propriétaires, aussi disponible en version libre,
                            # compatible avec bash.
csh->C Shell                # utilisant une syntaxe proche du langage C.
tcsh->Tenex C Shell         # Amélioration du C Shell.
zsh->Z Shell                # Shell récent reprenant les meilleures idées
                            # de bash, ksh et tcsh.

Le shell est le programme qui gère l invite de commandes
# se souvenir quelles étaient les dernières commandes tapées
# gérer les processus
# rediriger et chaîner les commande
# définir des alias  ex: ll == ls -larth

# Installer un nouveau shell
apt-get install ksh         # korn shell
chsh                        # demander a utiliser compte user   
                            # change shell
/bin/ksh                    # changer en ksh
/bin/sh                     # en sh
/bin/bash                   # en bash


#-----------PREMIER SCRIPT-----------

vim essai.sh
#!/bin/bash                 # quelle shell est utilisé
#!                          # sha-bang
permet de charger le bon shell avant
l execution du SCRIPT

#   EXECUTION DE COMMANDES

# écrire les commandes que vous souhaitez exécuter

ls              # pour lister les fichiers du répertoire.
cd              # pour changer de répertoire.
mkdir           # pour créer un répertoire.
grep            # pour rechercher un mot.
sort            # pour trier des mots.

COMMENTAIRE     # "#"

# donner les droits

chmod +x essai.sh

# lancer le script

./essai.sh      # *** tuto fonctionne pas
bash /home/akro/blablalbla

#   EXECUTION DE DEBOGAGE

# lance le script en mode debogage 
bash -x essai.sh
# affiche le script de maniere a trouver les pbS


#-----------CREER SA PROPRE COMMANDE-----------

actuellement script lancer via bash /h/home/akro/...

# les raccourci programmes sont placer ds le dossier path

echo $PATH      # liste des repetoires speciaux

deplacer le script ds un des ces repertoires :
/bin
/usr/bin
/usr/local/bin
au autre repertoire du path

# un foi fait seulement taper essai.sh pour lancer de nimporte ou

