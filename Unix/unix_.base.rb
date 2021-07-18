#--------------------------------
#--------------UNIX--------------


#--------------BASE--------------


lsb_release -a          # voir sa version Ubuntu

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

ctrl+pgup               # scroll terminal
ctrl+pgdw               # scroll terminal


# deplacer le curseur

⌃A	                    # Aller au début de la ligne
⌃E	                    # Aller à la fin de la ligne
⌃U	                    # Supprimer jusqu au début de la ligne
^K                      # suppr tout a droite du curseur
^W                      # suppr tout a gauche du curseur
^Y                      # colle suppr ^U ^K ^W


Option-click	        # Déplacer le curseur à l emplacement cliqué
Flèche haut et bas	    # Faire défiler les commandes précédentes


#----------ENCHAINER LES CMD------------


# ";"
# L une a la suite de l autre
touch fichier.txt; rm fichier.txt

# "&&"
# s enchaine si se sont correctement executé
touch fichier.txt && sleep 10 && rm fichier.txt

# "|"
# Chaîner des commandes
# ce qui sort de la cmd1 est immédiatement envoyé à la cmd2
cmd1 | cmd2


#--------P EN ARRIERE PLAN-----------


&           # lancer un processus en arrière-plan
            # *** le processus est « attaché » à votre console
            # Si vous fermez la console le processus sera tué
            # cf unix &


#----------CREER UN RACCOURCI------------


# ln -s nom_du_lien dossier_cible
ln -s /mnt/c/users/akro/desktop/ /home/akro/


#-------------ALIAS--------------


EX :

# cree un alias
alias lt="ls -lrt"
# si simplement en cmd pas sauvegardé

# editer le fichier .bashrc ds home pour sauvegarder
# editer le fichier .zshrc ds home pour sauvegarder
# si oh my zsh installé


#--------------NULL--------------


# Le « trou noir » de Linux
# Parfois, vous ne voulez ni voir le résultat d'une commande
# ni le stocker dans un fichier. l'astuce consiste à rediriger
# le résultat dans /dev/null.
commande_bavarde > /dev/null


#-----------CHANGER PASS-----------


sudo passwd root