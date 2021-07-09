#--------------------------------
#           UNIX

#-------------- BASE --------------
	
wsl/bash 	 	        # lancer envi LINUX
sudo 			        # autorisation root (admin)
pwd			            # emplacement actuel
cd			            # revenir a Home
cd /                    # re venir a la racine
cd 1		            # change directory 1path 
cd ..                   # reculer d 1
cd ../..                # reculer de 2
/                       # se deplacer de facon absolu
mkdir		            # creates directory
touch		            # creates file
.		 	            # curent directory
..			            # parent directory

echo <string>		    # Imprimer la chaîne à l écran
man <command>		    # Afficher la page de manuel
clear ou alors ⌃L	    # Écran propre	$ clear
exit ou alors ⌃D	    # Borne de sortie	$ exit

⌃C	                    # Sortez du pétrin
history                 # liste les dernieres commandes
^R                      # rechercher une commande tapée
^L                      # effacer la console => clear
^D                      # exit
shift+pgup              #
shift+pgdw              #


# deplacer le curseur
	
⌃A	                    # Aller au début de la ligne	
⌃E	                    # Aller à la fin de la ligne	
⌃U	                    # Supprimer jusqu au début de la ligne
^K                      # suppr tout a droite du curseur
^W                      # suppr tout a gauche du curseur
^Y                      # colle suppr ^U ^K ^W


Option-click	        # Déplacer le curseur à l emplacement cliqué	
Flèche haut et bas	    # Faire défiler les commandes précédentes


#-------VERIFIER SI UN FICHIER EXISTE---------


ls
ls nom du file 
ls *    # cherche tout les fichier .txt
ls -lh      # detail du fichier + human read
ls -rtl     # classer par date de modification
ls -a       # voir les fichiers cacher (ex: .gitignore)
ls -larth   # combine un peu tt


#---------ECRIRE DANS UN FICHIER----------


echo "blabla">file
echo "blabla2">>file    # a la suite nouvelle ligne


#---------DEPLACER RENOMMER----------


mv 1 2		=>	rename 1file 2newname
mv 1 2/1	=>	deplacer 1file 2fichier/1file


#---------COPIER D UN FICHIER VERS UN AUTRE----------


cat file1>file3
cat file2>>file3
# file 3 contient file1 + file2
#===
cat file1>file3 file2>>file3


#---------COPIER UN FICHIER----------


cp file1 file2
cp -R               # un dossier et ses sous dossiers
cp *.jpg file/      # copie tout les fichiers jpger vers file
cp so*              # tout les fichiers commencant par so


#---------COMPARER DES FICHIERS----------


diff file1 file2


#---------SUPPR UN FICHIER----------


rm file1	        # rm -> remove
rm -i               # demande de confirmation
rm -v file1         # -v => dit ce qu il fait    
# ***
rm -r DOSSIER		# RM DIRECTORY
rm -f file1         # f->force ( = pas besoin de confirmer )
# *** *** *** ***
JAMAIS CA !!! => rm -rf /*
remove recursive force fileRoot tous

#---------VOIR LE CONTENU DU FICHIER----------

cat  -n file        # -n => numero de ligne
less file           # lecture progressive
head -n 3 file      # 3 premieres lignes du file
tail -n 3 file      # 3 dernieres lignes du file

#----TAIL----

tail -f
tail -f -s 3 syslog

# Notez que par défaut,tail -f recherche les nouveaux changements
# dans le fichier toutes les secondes.
# le paramètre -s suivi d'un nombre => recherche toutes les trois secondes
# (plutôt que toutes les secondes)
# float -> « . » -> 3.5

#-----LESS-----

espace  # defile d un ecran
Entrée  # une ligne

d       # affiche les onze lignes suivantes (soit une moitié d'écran)
        # intermédiaire entre Espace (tout un écran) 
        # et Entrée (une seule ligne).

u       # retourne en arrière d'une moitié d'écran (onze lignes).

b       # retourne en arrière d'un écran.
        # == Page Up

y       # retourne d'une ligne en arrière.
        # == Flèche vers le haut



q       # arrête la lecture du fichier. Cela met fin à la commandeless.

# moins utiles 

=       # indique où vous en êtes dans le fichier 
        # (numéro des lignes affichées et pourcentage).

h       # affiche l'aide ,  Tapez q pour sortir de l'aide.

/       # tapez / suivi du texte que vous recherchez 
        # pour lancer le mode recherche. 
        # Faites Entrée pour valider.
        # expressions reguliere accepté

n       # après avoir fait une recherche avec / ,
        # la touche n vous permet d'aller à la prochaine occurrence

N       # parei l quen, mais pour revenir en arrière.



#----------CREER UN RACCOURCI------------


# ln -s nom_du_lien dossier_cible 
ln -s /mnt/c/users/akro/desktop/ /home/akro/


#-------------- VSCODE --------------


code .		#	ouvrir vscode (ds l emplacement actuel)


#-------------- NANO/VI --------------

#	ouvrir editeur de texte dans le shell 

# nano
nano file.txt	
^O
^X 

# VI
vi file.txt

insert -> ecrir
esc -> retour en  cli
:q -> quitter
:q! -> quitter sans save
:w -> save
:x -> save & quit 


#-------------- APT --------------


sudo apt update		            # 	permet de mettre à jour la liste des paquets disponibles, commande à taper en premier
    sudo apt-get update                 # avant toute installation pour être sûr d avoir les mises à jour.


sudo apt upgrade	            #	permet de mettre à jour les paquets déjà installés, à taper pour faire les mises à 
                                        # jour de sécurité.


sudo apt install soft	        #	Installe le logiciel "soft" en gérant les dépendances, donc "apt" vous 
                                        # demande peut être d installer d autres paquets en complément.


sudo apt remove soft	        #	désinstalle le paquet "soft".


sudo apt autoremove soft	    #	désinstalle "proprement" le paquet "soft" ainsi que ses dépendances.


apt search supersoft	        #	recherche le texte "supersoft" dans les descriptions des paquets.


man apt		                    #	pour avoir les options de "apt".


sudo apt-get installer chrome-navigateur pidgin		#	installer chrome



#-------------- aplly --------------


#---

vcxsrv
nano .bashrc ds home/akro
a la fin du fichier 		    # 	export DISPLAY=:0
exit shell relancer

#---

vim
sudo apt-get install vim-gtk 	# 	install
gvim				            #	editeur hors shell

#---

gimp
sudo apt-get install gimp 	    # 	install
gimp				            #	retouche

#---

xfce4 (kde,unity,...)
sudo apt-get install xfce4 	    # 	install
xfce4-session			        #	bureau


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