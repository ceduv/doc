#--------------------------------
#             UNIX
 

#------------EXECUTE---------------


#--------P EN ARRIERE PLAN-----------


&           # lancer un processus en arrière-plan
            # *** le processus est « attaché » à votre console
            # Si vous fermez la console le processus sera tué

cp video.avi copie_video.avi&
# [1] 16504
# [1]numéro processus en arrière-plan dans cette console

$ find / -name "*log" > sortiefind &
# [2] 18191
# renvoi les resulta vers sortiefind


#----------DETACHER LE PROCESS---------------


nohup       # détacher le processus de la console

nohup cp video.avi copie_video.avi
# nohup: ajout à la sortie de `nohup.out'

# sortie de commande par défaut vers un fichier nohup.out
# ex : serveur de jeu
# permet de se deconnecté de la ligne de commande
# le serveur continu de fonctionner


#------------METTRE EN PAUSE---------------


^Z          # mettre en pause l'exécution du programme
bg          # reprise du processus, mais cette fois en arrière-plan


#--------CONNAITRE BACKGROUND--------


jobs        # connaître les processus qui tournent en arrière-plan


#---------FOREGROUND---------


fg          # reprendre un processus au premier plan


#-----------SCREEN-----------


sudo apt-get install screen

sudo screen                 # plusieurs consoles en une
                            # root
¨^D exit                    # sortir

Ctrl + a , autre touche     # relâcher et appuyer sur une touche

Ctrl + a , ?                # aide

Ctrl + a , c                # créer une nouvelle « fenêtre ».
Ctrl + a , w                # afficher la liste des « fenêtres » actuellement
                            # ouvertes. En bas de l'écran vous verrez apparaître
                            # :0-$ bash  1*$ bash. signifie que vous avez deux
                            # fenêtres ouvertes, l'une numérotée 0, l'autre 1.
                            # Celle sur laquelle vous vous trouvez actuellement
                            # contient une étoile*(on se trouve donc ici dans la
                            # fenêtre n° 1).
Ctrl + a , A                # renommer la fenêtre actuelle. Ce nom apparaît
                            # lorsque vous affichez la liste des fenêtres avec
                            # Ctrl + a , w.
Ctrl + a , n                # passer à la fenêtre suivante (next).
Ctrl + a , p                # passer à la fenêtre précédente (previous).
Ctrl + a , Ctrl + a         # revenir à la dernière fenêtre utilisée.
Ctrl + a , de 0 à 9         # passer à la fenêtre n° X.
Ctrl + a , "                # choisir la fenêtre dans laquelle on veut aller"
Ctrl + a , k                # fermer la fenêtre actuelle (kill)

Ctrl + a , s                # split
Ctrl + a , Tab              # changer de screen

Ctrl + a , d                # détacher screen
                            # comme nohup sauf que on peut en ouvrir plusieurs

screen -ls                   # affiche screen ouverts                            
screen -r 20930             # session screen dans vous l'aviez laissée
                            # 20930 => numero de session

# fichier de conf
.screenrcet doit être placé dans votre /home/akro
https://www.quennec.fr/sites/default/files/screenrc.txt