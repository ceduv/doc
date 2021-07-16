#--------------------------------------------
#--------------------UNIX--------------------
             

#-----COMPILER UN PROGRAMME DEPUIS SOURCE-----

fichier .deb pour distribution DEBIAN
*** # souci de dependances

# alien capable de .rpm .deb

# LE .DEB INDISPONIBLE

# il ne reste alors qu une solution 
# récupérer le code source du programme et le compiler
# créer un exécutable spécialement optimisé pour sa machine.
# L'exécutable est l'équivalent du.exe de Windows
# même s'il n'a en général pas d'extension sous Linux.


#--------------COMPILER UN PGRM--------------

# EX : htop

# installer les outils de compilation
sudo apt-get install build-essential

# telecharger un code source
https://htop.dev/downloads.html

# extraire
tar zxvf htop-0.8.3.tar.gz

./configure
# verifie si tous les outils necessaires a
# la compilation sont presents

***
# si il manque des dependances
configure: error: missing headers:  curses.h
# recherche de la ligne d’erreur sur le web,
# accompagnée de préférence du mot-clé ubuntu

make 
# lancer la compilation
sudo make install
# installer
sudo make uninstall
# desinstaller
