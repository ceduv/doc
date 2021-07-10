#--------------------------------
#             UNIX
 

#-------ACTIVITE SYSTEM----------

arreter un processus
kill PID        
kill -9 PID         # si completement planté

$ ps -u mateo21 | grep find
$ killall find      # kill plusieurs processus

w 
# qui est connecté == who
# ex
$ w
 16:50:30 up  8:50,  2 users,  load average: 0,08, 0,34, 0,31
USER     TTY      FROM            LOGIN@   IDLE   JCPU   PCPU WHAT
mateo21  :0       -              19Apr08 ?xdm?   3:38m  1.18s /usr/bin/gnome-
mateo21  pts/0    :0.0           16:49    0.00s  0.33s  0.03s w

up  8:50        
    # uptime -> depuis combien de temps l'ordinateur travaille

load average: 0,08, 0,34, 0,31
    # indice de l'activité de l'ordinateur
    # la première correspond à la charge moyenne depuis 1 minute (0,08) 
    # la seconde à la charge moyenne depuis 5 minutes (0,34) 
    # la dernière à la charge moyenne depuis 15 minutes (0,31)
    # nombre moyen de processus (programmes) en train de tourner
# (obtenir un graphique de l'évolution tload) ^c -> quitter

USER     TTY      FROM              LOGIN@   IDLE   JCPU   PCPU WHAT
mateo21  :0       -                19Apr08 ?xdm?   3:38m  1.18s /usr/bin/gnome
mateo21  pts/0    :0.0             16:49    0.00s  0.33s  0.03s w


USER        # le nom de l utilisateur son login

TTY         # le nom de la console dans laquelle se trouve l'utilisateur
            # Souvenez-vous que sous Linux il y a en général six consoles (tty1àtty6)
            # et qu'en plus de ça, on peut en ouvrir une infinité grâce aux consoles
            # graphiques (leur nom commence parpts, en général), comme le propose
            # le programme « Terminal » sous Unity ou « Konsole » sous KDE

FROM        # l'adresse IP (ou le nom d'hôte) depuis laquelle il se connecte.
            # comme je me suis connecté en local (sur ma propre machine
            # sans passer par Internet), il n'y a pas vraiment d'IP

LOGIN@      # l'heure à laquelle cet utilisateur s'est connecté

IDLE        # depuis combien de temps cet utilisateur est inactif 
            # (il n'a pas lancé de commande)
            
WHAT        # la commande qu'il est en train d'exécuter en ce moment.
            # si vous voyezbash, cela signifie que l'invite de commandes
            # est ouverte et qu'aucune commande particulière n'est exécutée.


#-------LISTER LES PROCESS----------

# dynamique
top
                # triés par taux d'utilisation du processeur %CPU
cmd utilisable
q               # ferme top
h               # affiche l'aide
B               # met en gras certains éléments
f               # ajoute ou supprime des colonnes dans la liste
F               # change la colonne selon laquelle les processus sont triés
u               # filtre en fonction de l'utilisateur que vous voulez.
k               # tue un processus (PID)
s               # change tempsrafraîchissement

# statique
ps 
ps -ef          # lister tous les processus
ps -ejH         # afficher les processus en arbre (enfants)
ps -u mateo21   # lister les processus lancés par un utilisateur

PID TTY          TIME CMD
10777 pts/0    00:00:05 zsh
22218 pts/0    00:00:00 ps

PID             # identification du processus (util : arrêter le processus)
TTY             # console depuis laquelle a été lancé le processus
TIME            # durée pendant laquelle le processus a occupé
                # le processeur depuis son lancement
CMD             # le programme qui a généré ce processus


#---------HALT REBOOT---------

sudo halt       # arrêt
sudo reboot     