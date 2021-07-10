#---------------------------
#          UNIX
 

#-----------MAN--------------

man mkdir                       # doc de la commande mkdir


#--------DEPLACEMENTS---------

Q                               # quitter le manuel
fleche                          # ligne par ligne
PageUp / PageDown / Espace      # de page en page.
Home                            # début
Fin                             # fin

 / (slash)                      # pour effectuer une recherche
                                # Tapez ensuite le mot que vous recherchez
                                # Entrée.
                                # automatiquement placés sur le premier résultat
                                # résultat suivant, tapez à nouveau / puis Entrée

                                
#----------SECTIONS----------


NAME        # le nom de la commande + courte description

SYNOPSIS    # liste de toutes les façons d'utiliser la commande

DESCRIPTION # plus approfondie de ce que fait la commande
            # la liste des paramètres et leur signification

SEE ALSO    # voir aussi d'autres commandes en rapport


#----------SYNOPSIS----------

# SOULIGNE  ==  A REMPLACER
#   |       ==  OU

#1
mkdir [OPTION] DIRECTORY ... 

mkdir       # pour utiliser commencer par mkdir
[OPTION]    # [] -> c'est facultatif
DIRECTORY   # nom du répertoire à créer. 
            # obligatoire pas entre crochets.
…           # points de suspension -> on peut répéter DIRECTORY

#2
cp [OPTION]... [-T] SOURCE DEST 
cp [OPTION]... SOURCE... DIRECTORY
cp [OPTION]... -t DIRECTORY SOURCE...

#3
apt-get [-asqdyfmubV] [-o=config_string] [-c=config_file] [-t=target_release]
               [-a=architecture] {update | upgrade | dselect-upgrade | dist-upgrade |
               install pkg [{=pkg_version_number | /target_release}]...  | remove pkg...  |
               purge pkg...  | source pkg [{=pkg_version_number | /target_release}]...  |
               build-dep pkg [{=pkg_version_number | /target_release}]...  |
               download pkg [{=pkg_version_number | /target_release}]...  | check | clean |
               autoclean | autoremove | {-v | --version} | {-h | --help}}


#----------A PROPOS----------

apropos sound   # mot clé recherche toutes les pages du manuel