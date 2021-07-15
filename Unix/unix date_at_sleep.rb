#---------------------------------
#             UNIX
             

#-------------DATE----------------


man date 

+                       # spécifier affichage personnalisé

date "+%H:%M:%S"        # 12:36:15      ":"
date "+%Hh%Mm%Ss"       # 12h41m01s     "hmns"
date "+Bienvenue en %Y" # Bienvenue en 2010


#       MODIFIER LA DATE


# ROOT
sous la forme suivante :MMDDhhmmYYYY

# pas obligatoire de préciser l année
sudo date 11101250      # MM11 DD10 hh12 mm50 YYYY----
mercredi 10 novembre 2010, 12:50:00 (UTC+0100)


#-------------AT----------------


sudo atd                # run jobs queued for later exec
at 14:17                # suite de commande a lancer 14:17
^d                      # pr quitter
    
at 14:17 11/15/10       # date format américain
at 14:17 tomorrow   
at now +5 minutes       # minutes years
at now +2 weeks         # hours   months
                        # days    weeks

atq                     # lister les jobs en attentes
atrm 8                  # suppr le job 8

                
#------------SLEEP---------------


# enchaîner cmd ";"
# enchainer cmd "&&" s enchaine si corect exec
touch fichier.txt; sleep 10; rm fichier.txt
# par defaut sleep est en secondes
touch fichier.txt; sleep 1m; rm fichier.txt
# m h d 


