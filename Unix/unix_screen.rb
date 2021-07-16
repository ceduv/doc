#----------------------------
#            UNIX

#-----------SCREEN-----------


sudo apt-get install screen

sudo screen                 # plusieurs consoles en une
                            # root
¨^D exit                    # sortir

^a , ?                      # aide

^a , c                      # créer une nouvelle « fenêtre ».
^a , A                      # renommer la fenêtre actuelle

^a , w                      # afficher la liste des fenêtres actuellement ouvertes
                            # En bas de l'écran vous verrez apparaître :0-$ bash  
                            # 1*$ bash
                            # vous vous trouvez actuellement *

^a , ' " '                  # MENU FENETRE
^a , espace ou n            # FENETRE suivante 
^a , return ou p            # FENETRE précédente 
^a , ^a                     # derniere FENETRE
^a , de 0 à 9               # FENETRE n° X
^a , k                      # KILL

^a + x                      # verrouille votre session screen


#       MODE COPY

^a + [                      # pour entrer en copy mode
^a + echap                  # permet d entrer en mode copy 
                            # de naviguer dans l'historique de l'onglet
^a + ]                      # coller dans stdin                            

#       SPLIT

^a , Tab                    # changer de screen
^a + S                      # split horizontalement screen
^a + |                      # split verticalement screen

#       DETACHER

^a , d                      # détacher screen
                            # comme nohup sauf que on peut en ouvrir plusieurs

#       HORS SCREEN
screen -ls                  # affiche screen ouverts                            
screen -r 20930             # session screen comme vous l'aviez laissée
                            # 20930 => numero de session


### COMMANDES ### 
# entrer en mode commande ^a + :
password                # permet de définir un mot de passe pour protéger sa session.
                        # *** impossible de recup la session sans le mdp
quit                    # ferme brutalement tous les onglets et quitte screen
kill                    # tue la fenêtre actuelle
reset                   # remet screen dans sa configuration de lancement
                        # (pratique suite à des tests par exemple)
source ~/.screenrc      # reset conf de votre screen sans quitter

### FICHIER DE CONF ###
# .screenrc et doit être placé dans votre /home/akro
# perso jai ete ds /etc/screenrc ***
https://www.quennec.fr/sites/default/files/screenrc.txt
