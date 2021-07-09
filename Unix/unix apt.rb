#---------------------------
#          UNIX
 

#-------------- APT --------------

sudo apt-get upgrade	        # MAJ paquets installés
                                # MAJ de sécurité.

sudo apt-get update             # met le cache a jour
sudo apt-cache search [keyW]    # rechercher un logiciel   
sudo apt-get install [name]     # l installer

sudo apt-get install paquet1 paquet2 paquet3
sudo apt-get remove soft	    # désinstalle le paquet "soft".
sudo apt-get autoremove soft    # désinstalle "proprement" le paquet "soft" ainsi que ses dépendances.
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