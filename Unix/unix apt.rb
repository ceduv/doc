#---------------------------
#          UNIX
 

#-------------- APT --------------

sudo apt-cache search [mot-clé]         
# trouver le nom d un logiciel ds library

sudo apt-get install [nom du logiciel]  
# l installer

sudo apt update		            # permet de mettre à jour la liste des paquets disponibles, commande à taper en premier
sudo apt-get update             # avant toute installation pour être sûr d avoir les mises à jour.

sudo apt upgrade	            # permet de mettre à jour les paquets déjà installés, à taper pour faire les mises à 
                                # jour de sécurité.

sudo apt install soft	        # Installe le logiciel "soft" en gérant les dépendances, donc "apt" vous 
                                # demande peut être d installer d autres paquets en complément.

sudo apt remove soft	        # désinstalle le paquet "soft".

sudo apt autoremove soft	    # désinstalle "proprement" le paquet "soft" ainsi que ses dépendances.

apt search supersoft	        # recherche le texte "supersoft" dans les descriptions des paquets.

man apt		                    # pour avoir les options de "apt".


#-------------- aplly --------------

#---
vcxsrv
nano .bashrc ds home/akro
a la fin du fichier 	        # export DISPLAY=:0
exit shell relancer

#---
vim
sudo apt-get install vim-gtk    # install
gvim				            # editeur hors shell

#---
gimp
sudo apt-get install gimp 	    # install
gimp				            # retouche       

#---
xfce4 (kde,unity,...)
sudo apt-get install xfce4 	    # install
xfce4-session			        # bureau