#--------------------------------
#              UNIX

#-------------GREP---------------


# rechercher un mot dans un fichier

grep texte nomfichier
grep "Site du Zéro" monfichier

-i      # ne pas tenir compte de la casse$
-n      # connaître les numéros des lignes
-v      # inverser la recherche => ignorer un mot
-r      # recursive ou rgrep


# |
sudo grep log -Ir /var/log  | cut -d : -f 1  | sort | uniq

sudo grep log -Ir /var/log
# liste tous les fichiers contenant le mot « log » dans /var/log 
# (-I permettant d'exclure les fichiers binaires).
cut -d : -f 1  
# extrait de ce résultat uniquement les noms des fichiers
sort
# Elle trie ces noms de fichiers
uniq
# Elle supprime les doublons


#-------expressions régulières-------


egrep  === grep -E

.       # Caractère quelconque
^       # Début de ligne
$       # Fin de ligne
[]      # Un des caractères entre les crochets
?       # L'élément précédent est optionnel (peut être présent 0 ou 1 fois)
*       # L'élément précédent peut être présent 0, 1 ou plusieurs fois
+       # L'élément précédent doit être présent 1 ou plusieurs fois
|       # Ou
()      # Groupement d'expressions


$ grep -E ^Alias .bashrc    # alias doit etre placer au debut de la ligne
grep -E [Aa]lias .bashrc    # les lignes contenant  alias | Alias
grep -E [0-4] .bashrc       # nombre compris entre 0 et 4
grep -E [a-zA-Z] .bashrc    # compris entre a & z | entre A & Z


#-------------SORT---------------


# trier les lignes

$ sort noms.txt             # contenu fichier trié alphabétiquement
                            # résultat dans la console
                            # ne fait pas attention à la casse

-o      # écrire le résultat dans un fichier
-r      # trier en ordre inverse
-R      # trier aléatoirement         
-n      # trier des nombres 


#-------------WC---------------


# wc signifie word count

$ wc noms.txt 
# 8  8 64 noms.txt
# 8 le nombre de lignes
# 8 le nombre de mots
# 64 le nombre d'octets

-l      # compter le nombre de lignes
-w      # compter le nombre de mots
-c      # compter le nombre d'octets
-m      # compter le nombre de caractères


#-------------UNIQ---------------

#  compter les doublons

on doit trier le fichier au prealable
uniqne repère les lignes successives identiques

# écrit dans un autre fichier plutôt que dans la console
uniq doublons.txt sans_doublons.txt

-c      # compter le nombre d'occurrences
-d      # afficher uniquement les lignes présentes en double


#--------------CUT--------------


# NBR DE CARACTERES

# conserver uniquement les caractères 2 à 5 de chaque ligne du fichier
cut -c 2-5 noms.txt

# conserver du 1er au 3ème caractère
cut -c -3 noms.txt 

# conserver du 3ème au dernier caractère
cut -c 3- noms.txt


# DELIMITATEUR

-d      # indique quel est le délimiteur dans le fichier
-f      # indique le numéro du ou des champs à couper

cut -d , -f 1 notes.csv
# ici delimitateur => ,  conserver => 1er champ

$ cut -d , -f 1,3 notes.csv
# conserver 2 champs 

cut -d , -f 2-4 notes.csv
# une serie de champs