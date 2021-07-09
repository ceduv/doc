#--------------------------------
#            UNIX

#-----------NANO/VI--------------

# ouvrir editeur de texte dans le shell 

# nano

nano file.txt	

^G  # afficher l aide
^K  # couper la ligne de texte (et la mettre dans le presse-papier)
^U  # coller la ligne de texte que vous venez de couper
^C  # afficher à quel endroit du fichier votre curseur est positionné
^W  # rechercher dans le fichier
^O  # enregistrer le fichier (écrire)
^X  # quitter Nano


# VI

vi file.txt

insert -> ecrir
esc -> retour en  cli
:q -> quitter
:q! -> quitter sans save
:w -> save
:x -> save & quit 

gvim    # editeur hors shell
