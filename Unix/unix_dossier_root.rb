#------------------------------------------
#                UNIX
             

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