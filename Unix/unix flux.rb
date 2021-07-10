#--------------------------------
#--------------UNIX--------------


#-------FLUX DE REDIRECTION------- 


# | Chaîner des commandes
cmd1 | cmd2
# ce qui sort de la commande1 est immédiatement envoyé à la commande2


# TRIER PAR TAILLE
du 
# du permet d'obtenir la taille
du | sort -nr
# liste du plus grand au plus petit
du | sort -nr | head
# recupere le head donc ici les plus gros

du | sort -nr | less
# meme resultat page par page


# > >>
>
cut -d , -f 1 notes.csv > eleves.txt    # rediriger le cut ds un nouveau fichier
                                        # *** si le fichier existait déjà
                                        # écrasé sans demande de confirmation
>>
cut -d , -f 1 notes.csv >> eleves.txt   # rediriger à la fin d'un fichier


# 2> 2>> 
cut -d , -f 1 fichier_inexistant.csv > eleves.txt 2> erreurs.log
# redirige les erreures ds un fichier a part
# Il y a deux redirections ici :
> eleves.txt        # la sortie standard (sauf les erreurs)
2> erreurs.log      # C'est la sortie d'erreurs


# 2>&1

cut -d , -f 1 fichier_inexistant.csv > eleves.txt 2>&1
# fusionner les sorties
# rediriger toute la sortie d'erreurs dans la sortie standard


# < <<
<       # lire depuis un fichier
<<      # lire depuis le clavier progressivement

sort -n << FIN
# propose alors de taper du texte
# tapez FIN pour arrêter la saisie
# entré trier par sort sans creation de fichier

# ex : wc pour compter le nombre de mots ou de caractères
$ wc -m << FIN
> Combien de caractères dans cette phrase ?
> FIN
42