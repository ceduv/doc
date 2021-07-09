#--------------------------------
#              UNIX

#--------------FILE--------------

#-------VERIFIER SI UN FICHIER EXISTE---------


ls
ls nom du file 
ls *    # cherche tout les fichier .txt
ls -lh      # detail du fichier + human read
ls -rtl     # classer par date de modification
ls -a       # voir les fichiers cacher (ex: .gitignore)
ls -larth   # combine un peu tt


#---------ECRIRE DANS UN FICHIER----------


echo "blabla">file
echo "blabla2">>file    # a la suite nouvelle ligne

#---------TROUVER UN FICHIER----------

mlocate Array.rb

#---------DEPLACER RENOMMER----------


mv 1 2		=>	rename 1file 2newname
mv 1 2/1	=>	deplacer 1file 2fichier/1file


#---------COPIER D UN FICHIER VERS UN AUTRE----------

tail
cat file1>file3
cat file2>>file3
# file 3 contient file1 + file2
#===
cat file1>file3 file2>>file3


#---------COPIER UN FICHIER----------


cp file1 file2
cp -R               # un dossier et ses sous dossiers
cp *.jpg file/      # copie tout les fichiers jpger vers file
cp so*              # tout les fichiers commencant par so


#---------COMPARER DES FICHIERS----------


diff file1 file2


#---------SUPPR UN FICHIER----------


rm file1	        # rm -> remove
rm -i               # demande de confirmation
rm -v file1         # -v => dit ce qu il fait    
# ***
rm -r DOSSIER		# RM DIRECTORY
rm -f file1         # f->force ( = pas besoin de confirmer )
# *** *** *** ***
JAMAIS CA !!! => rm -rf /*
remove recursive force fileRoot tous

#---------VOIR LE CONTENU DU FICHIER----------

cat  -n file        # -n => numero de ligne
less file           # lecture progressive
head -n 3 file      # 3 premieres lignes du file
tail -n 3 file      # 3 dernieres lignes du file

#----TAIL----

tail -f
tail -f -s 3 syslog

# Notez que par défaut,tail -f recherche les nouveaux changements
# dans le fichier toutes les secondes.
# le paramètre -s suivi d'un nombre => recherche toutes les trois secondes
# (plutôt que toutes les secondes)
# float -> « . » -> 3.5

#-----LESS-----

espace  # defile d un ecran
Entrée  # une ligne

d       # affiche les onze lignes suivantes (soit une moitié d'écran)
        # intermédiaire entre Espace (tout un écran) 
        # et Entrée (une seule ligne).

u       # retourne en arrière d'une moitié d'écran (onze lignes).

b       # retourne en arrière d'un écran.
        # == Page Up

y       # retourne d'une ligne en arrière.
        # == Flèche vers le haut



q       # arrête la lecture du fichier. Cela met fin à la commandeless.

# moins utiles 

=       # indique où vous en êtes dans le fichier 
        # (numéro des lignes affichées et pourcentage).

h       # affiche l'aide ,  Tapez q pour sortir de l'aide.

/       # tapez / suivi du texte que vous recherchez 
        # pour lancer le mode recherche. 
        # Faites Entrée pour valider.
        # expressions reguliere accepté

n       # après avoir fait une recherche avec / ,
        # la touche n vous permet d'aller à la prochaine occurrence

N       # parei l quen, mais pour revenir en arrière.
