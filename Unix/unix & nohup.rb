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
