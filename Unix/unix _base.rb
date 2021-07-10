#--------------------------------
#           UNIX
             

#-------------- BASE --------------

lsb_release -a          # voir sa version Ubuntu

wsl/bash 	 	# lancer envi LINUX
sudo 			# autorisation root (admin)
pwd			# emplacement actuel
cd			# revenir a Home
cd /                    # re venir a la racine
cd 1		        # change directory 1path 
cd ..                   # reculer d 1
cd ../..                # reculer de 2
/                       # se deplacer de facon absolu
mkdir		        # creates directory
touch		        # creates file
.		 	# curent directory
..			# parent directory

echo <string>		# Imprimer la chaîne à l écran
man <command>		# Afficher la page de manuel
clear ou alors ⌃L	# Écran propre	$ clear
exit ou alors ⌃D	# Borne de sortie	$ exit

⌃C	                # Sortez du pétrin
history                 # liste les dernieres commandes
^R                      # rechercher une commande tapée
^L                      # effacer la console => clear
^D                      # exit

shift+pgup              #
shift+pgdw              #


# deplacer le curseur
	
⌃A	                # Aller au début de la ligne	
⌃E	                # Aller à la fin de la ligne	
⌃U	                # Supprimer jusqu au début de la ligne
^K                      # suppr tout a droite du curseur
^W                      # suppr tout a gauche du curseur
^Y                      # colle suppr ^U ^K ^W


Option-click	        # Déplacer le curseur à l emplacement cliqué	
Flèche haut et bas	# Faire défiler les commandes précédentes


#----------CREER UN RACCOURCI------------


# ln -s nom_du_lien dossier_cible 
ln -s /mnt/c/users/akro/desktop/ /home/akro/


#-------------- VSCODE --------------


code .		#	ouvrir vscode (ds l emplacement actuel)


#--------------NULL--------------

# Le « trou noir » de Linux
# Parfois, vous ne voulez ni voir le résultat d'une commande
# ni le stocker dans un fichier. l'astuce consiste à rediriger
# le résultat dans /dev/null.  
commande_bavarde > /dev/null


#---------DOSSIERS DE LA RACINE-------------


#   /
bin     # contient des programmes (exécutables) susceptibles
        # d'être utilisés par tous les utilisateurs de la machine.

boot    # fichiers permettant le démarrage de Linux.

dev     # fichiers contenant les périphériques.
        # ce dossier contient des sous-dossiers qui
        # « représentent » chacun un périphérique.
        # exemple : le fichier qui représente le lecteur CD.

etc     # fichiers de configuration.

home    # répertoires personnels des utilisateurs.
        # fichiers personnels, Mes documentsde Windows.

#---
#   /home/akro/
lib     # dossier contenant les bibliothèques partagées 
        # (fichiers.so) utilisées par les programmes.  
        # l'équivalent des .dll de Windows.

media   # lorsqu'un périphérique amovible (clé USB) 
        # Linux permetaccéder de media. On parle de montage.

mnt     # c'est un peu pareil quemedia, mais pour un usage plus temporaire.

opt     # répertoire utilisé pour les add-ons de programmes.

proc    # contient des informations système.

root    # c'est le dossier personnel de l'utilisateur « root ».
        # Normalement les dossiers personnels sont placés danshome
        # mais celui de « root » fait exception.
        # « root » est le superutilisateur

sbin    # contient des programmes système importants.

tmp     # dossier temporaire utilisé par les programmes pour stocker des fichiers.

usr     # c'est un des plus gros dossiers, dans lequel installer
        # la plupart des programmes demandés par l'utilisateur.

var     # ce dossier contient des données « variables »,souvent des logs
        #  (traces écrites de ce qui s'est passé récemment sur l'ordinateur).