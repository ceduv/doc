#---------------------------------
#             UNIX

#----------LES DROITS-------------


#---------ORGANISATIONS-----------


                ROOT            # ADMIN
               |    |
         ______|    |____
        famille|    |amis       # GROUPE
              ||    ||
  ___________||      ||____________________
  ||     ||             ||      ||       ||   
  akro   alex         keke    clem   tryoux


#-------------SUDO---------------- 

Substitute User Do
cmd en tant que ROOT

sudo su => passez ROOT definitivement
                    # symbole "#" => super utilisateur
                    # exit pour quitter le mode
#===
su -


#-----VOIR LES USERS---------

whoami              # sous quoi je suis connecté
w                   # lister tous les utilisateurs connectés en
                    # SSH ou en console à votre serveur Linux.


#---------CHANGER USER--------------


su UserName


#---------GESTIONS USERS------------


adduser             # new user
deluser             # suppr
                    # *** Aucune confirmation !!!

passwd newuser      # changer le pass
                    # si pas d argument on change le mdp
                    # de la session en cour d utilisation

deluser --remove-home newuser
                    # suppr l user et son home


#-----GESTIONS DE GRP--------- 


addgroup nom 
usermod -l          # renome l utilisateur 
        -g          # change de grp

usermod -aG newuser grp1,grp2,grp3
                    # plusieurs grp
                    # garde son grp de base

usermod -G newuser grp1,grp2,grp3
                    # plusieurs grp
                    # ***
                    # perd son grp de base


#-----GESTIONS DES PROPRIETAIRES---------


chown user rapport.txt  
                    # change le prop du fichier
                    # 1 - user => nouveau proprietaire
                    # 2 - fichier a modifier

chown user:grp1 rapport.txt 
                    # change le grp d acces
                    # 1 - newuser:newgrp
                    # 2 - fichier a modifier

chown -R user:grp1 rapport.txt  
                    # change le grp d acces
                    # de maniere recursive
                    # tsous dossiers/fichiers

chgrp grp1 rapport.txt  
                    # change le grp d acces

                
#---------DROIT D ACCES------------


ls -l
drwxr-xr-x 3 akro akro 4096 Jul  7 14:33 code
drwxr-xr-x 2 akro akro 4096 Jun 24 14:04 Desktop
lrwxrwxrwx 1 akro akro   26 Jul  7 01:15 wdesk -> /mnt/... 
# d (dossier) (1)rwx (proprietaire) 
#             (2)rwx (autres membres grp)
#             (3)rwx (autres users machine)
# drwxrwxrwx

d (Directory)
l (Link)
r (Read)
w (Write)
x (eXecute)

# Si la lettre apparaît, c'est que le droit existe. 
# S'il y a un tiret à la place, c'est qu'il n'y a aucun droit.

# CHMOD --> MODIFIER LES DROITS
# NUMERO

# on attribue un chiffre à chaque droit :
r   ->  4  
w   ->  2 
x   ->  1  
# combiner les droits = additioner
# droit de lecture et de modification -> rw -> 6
--- ->  0
r-- ->  4
-w- ->  2
--x ->  1
rw- ->  6
-wx ->  3
r-x ->  5
rwx ->  7
# ex : 640 (prop)->rw (grp)->r (autres)->---
chmod 640 rapport.txt

# CHMOD RELATIF
# LETTRE
-R -> recursive
# chmod -R 700 /home/mateo21

u   # user 
g   # group 
o   # other 

+   # Ajouter le droit
-   # Supprimer le droit
=   # Affecter le droit

chmod g+w rapport.txt       # Ajouter écriture groupe 
chmod o-r rapport.txt       # Enlever lecture autres
chmod g+w,o-w rapport.txt   # Ajout w + Enlev w   
chmod +x rapport.txt        # droit d'exécution à tout le monde
# affectation
chmod u=rwx,g=r,o=- rapport.txt
# tous les droits au prop, lecture au groupe, rien aux autres