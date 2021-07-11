#---------------------------------
#              UNIX

#------------CONTRAB---------------


# programmer l'exécution régulière d'un programme

cron                    # exécute ces programmes aux heures demandées
crontab                 # permet de changer la liste a exécutés         

-e                      # modifier la crontab 
-l                      # afficher la crontab actuelle 
-r                      # supprimer votre crontab.
                        # *** suppression immédiate

# cree crontab                       
crontab -e                  
# apres ouverture nano / vi          
m h  dom mon dow   command

*                       # tous les nbrs sont valables
m                       # minutes (0 - 59)
h                       # heures (0 - 23)
dom(day of month)       # (1 - 31)
mon(month)              # (1 - 12)
dow(day of week)        # (0 - 6, 0 étant le dimanche)
command                 # c'est la commande à exécuter

# exécuter une commande tous les jours à 15 h 47
47 15 * * * touch /home/mateo21/fichier.txt
47 * * * * commande     # Toutes les heures à 47 minutes exactement.
0 0 * * 1 commande      # Tous les lundis à minuit (dans la nuit de dimanche à lundi).
0 4 1 * * commande      # Tous les premiers du mois à 4 h du matin.
0 4 * 12 * commande     # Tous les jours du mois de décembre à 4 h du matin.
0 * 4 12 * commande     # Toutes les heures les 4 décembre.
* * * * * commande      # Toutes les minutes ! *** minimum possible

# differentes notations

5(un nombre)            # exécuté lorsque le champ prend la valeur 5 
*                       # exécuté tout le temps (toutes les valeurs sont bonnes) 
3,5,10                  # exécuté lorsque le champ prend la valeur 3, 5 ou 10
                        # Ne pas mettre d espace après la virgule 
3-7                     # exécuté pour les valeurs 3 à 7 
*/3                     # exécuté tous les multiples de 3 (ex:  0 h, 3 h, 6 h, 9 h…)

30 5 1-15 * * commande  # À 5 h 30 du matin du 1er au 15 de chaque mois.
0 0 * * 1,3,4 commande  # À minuit le lundi, le mercredi et le jeudi.
0 */2 * * * commande    # Toutes les 2 heures (00 h 00, 02 h 00, 04 h 00…)
*/10 * * * 1-5 commande # Toutes les 10 minutes du lundi au vendredi.


#--------REDIRIGER LA SORTIE--------


47 15 * * * touch /home/mateo21/fichier.txt >> /home/mateo21/cron.log
# redirige le resutat de la cmd
47 15 * * * touch /home/mateo21/fichier.txt >> /home/mateo21/cron.log 2>&1
# ainsi que les erreures
47 15 * * * touch /home/mateo21/fichier.txt > /dev/null 2>&1
# si je ne veu rien recuperer je renvoi vers null