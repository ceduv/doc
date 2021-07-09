#--------------------------------
#           UNIX

#---------LES DROITS-------------


#-----ORGANISATIONS---------


                ROOT            # ADMIN
               |    |
         ______|    |____
        famille|    |amis       # GROUPE
              ||    ||
  ___________||      ||____________________
  ||     ||             ||      ||       ||   
  akro   alex         keke    clem   tryoux


#-----SUDO---------  

Substitute User Do
cmd en tant que ROOT

sudo su => passez ROOT definitivement
            # symbole "#" => super utilisateur
            # exit pour quitter le mode
#===
su - 

#-----GESTIONS UTLISATEURS---------

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