#--------------------------------
#--------------UNIX--------------
             

#--------------RESEAU--------------


IPV4 86.172.128.8
IPV6 fe80::209:62fa:fb80:29f2
HOSTNAME                    # remplacer par un nom


#           HOST
host siteduzero.com         # dans un sens
siteduzero.com has address 92.243.25.239
host 92.243.25.239          # ds l autre
123.219.248.80.in-addr.arpa domain name pointer lisa.simple-it.fr.
siteduzero.com = lisa.simple-it.fr

###
# Sur un réseau local, pratique d'associer un nom d'hôte
# à chaque PC pour sy connecter sans avoir à retenir l'IP

#           WHOIS

whois siteduzero.com

# Chaque nom de domaine doit obligatoirement indiquer
# : nom, prénom, adresse et moyens de contact


#-----------IFCONFIG / NETSTAT-----------

# ifconfig

ifconfig            # liste des interfaces réseau
eth0                # cela correspond à la connexion par câble réseau
                    # les serveurs ont plusieurs sorties eth1 eth2
lo                  # c est la boucle locale -> se connecter à soi-même
wlan0               # connexion sans-fil type Wi-Fi 
                    # si plusieurs cartes réseau wlan1 wlan2

ifconfig interface etat # activer/desactiver interface
ifconfig eth0 up        # active
ifconfig eth0 down      # desactive

# netstat

netstat -i          # statistiques des interfaces réseau
                    # détecter l'activité de vos interfaces


netstat -uta        # lister toutes les connexions ouvertes 

-u                  # afficher les connexions UDP 
-t                  # afficher les connexions TCP 
-a                  # toutes les connexions quel que soit leur état
-n                  # voir ports

ESTABLISHED         # connexion établie avec l'ordinateur distant

TIME_WAIT           # attend le traitement de tous les paquets encore
                    # sur le réseau avant de commencer la fermeture

CLOSE_WAIT          # le serveur distant a arrêté la connexion de
                    # lui-même (ex : inactifs trop longtemps )

CLOSED              # la connexion n'est pas utilisée

CLOSING             # la fermeture de la connexion est entamée
                    # toutes les données pas encore été envoyées

LISTEN              # à l'écoute des connexions entrantes.                   


netstat -lt         # liste des connexions en état d'écoute
netstat -s          # statistiques résumées


#----------------IPTABLE----------------


vous devez impérativement être en « root »

iptables -L         # afficher les règles
Chain INPUT         # règles manipulant le trafic entrant 
Chain FORWARD       # règles manipulant la redirection du trafic 
Chain OUTPUT        # règles manipulant le trafic sortant


#---------REINTITIALISER LES REGLES---------


iptables -F   
# *** ! Réinitialise toutes les règles iptables !


#-------------LES REGLES-------------


# l ordre des règles est important iptables les lit de haut en bas 
iptables -L --line-numbers

target                  # ce que fait la règle.
                        # ex: ACCEPT, autorise port et/ou IP
prot                    # le protocole utilisé (tcp,udp,icmp). 
                        # TCP est celui auquel on a le plus recourt
                        # ICMP permet de répondre aux  ping 
source                  # l'IP de source. 
                        # INPUT, l'ordinateur qui se connecte à vous
destination             # l'IP de destination 
                        # OUTPUT,l'ordinateur auquel on se connecte
la dernière colonne     # indique le port après les deux points « : »
                        # affiché en lettres, avec-n -> le numéro 


#-------AJOUTER SUPPRIMER DES REGLES-------                    


-A chain                # ajoute une règle en fin de liste pour la chain indiquée
                        # (INPUT ou OUTPUT, par exemple).
-D chain rulenum        # supprime la règle n° rulenumpour lachainindiquée.
-I chain rulenum        # insère une règle au milieu de la liste à la position indiquée par rulenum. Si vous n'indiquez pas de positionrulenum, la règle sera insérée en premier, tout en haut dans la liste.
-R chain rulenum        # remplace la règle n° rulenumdans lachainindiquée.
-L                      # liste les règles
-F chain                # vide toutes les règles de la chain indiquée.
                        # revient à supprimer toutes les règles une par une pour cette chain.
-P chain regle          # modifie la règle par défaut pour la chain.
                        # exemple: par défaut tous les ports sont fermés,
                        # sauf ceux que l'on a indiqués dans les règles.

iptables -A (chain) -p (protocole) --dport (port) -j (décision)
chain           # input output
protocole       # tcp udp icmp ...
decision        # accept reject drop(ignorer)

***
# Si vous ne précisez pas de port (en omettant la sectiondport)
# tous les ports seront acceptés !


#---------AUTORISER LES PINGS---------


# ex : pr icmp
iptables -A INPUT -p icmp -j ACCEPT
#*** tous les ports ici


#-----AUTORISER LOCALE / DEJA OUVERTE-----


iptables -A INPUT -i lo -j ACCEPT   
# autorise tout le trafic sur l'interface de loopback locale grâce à-i lo.
# pas de risque à autoriser votre ordinateur à communiquer avec lui-même
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
# autorise toutes les connexions qui sont déjà à l'état ESTABLISHED ou RELATED
# autorise toutes les connexions qui ont été demandées par votre PC
# permet d'assouplir le pare-feu pour une utilisation quotidienne


#------REFUSER CONNECTIONS PAR DEFAUT------


iptables -P INPUT DROP
# iptables indique que par défaut tout est refusé,
# sauf ce qui est indiqué par les lignes dans le tableau


#--------APPLIQUER LES REGLES AU DEM--------


# Si vous redémarrez votre ordinateur, les règles auront disparu 
# Créer un script qui sera exécuté au démarrage
https://doc.ubuntu-fr.org/iptables#appliquer_les_regles_au_demarrage










