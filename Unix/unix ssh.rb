#--------------------------------
#-------------UNIX---------------
             
#--------------SSH----------------

#           PROTOCOLES

HTTP        # HyperText Transfer Protocole
FTP         # File Transfer Protocol
IMAP        # Internet Message Access Protocol

SSH         # Secure SHell (donnée chiffré)
telnet      # simple mais dangereu
Wireshark   # capables d'écouter un reseau


#-------------CHIFFREMENT-------------

#   SYMETRIQUE

la plus simple
# 1 seule clé
# impossible d envoyer la clé en clair
# on peut l envoyer en asymetrique

#   ASYMETRIQUE

une clé publique        # qui sert à chiffrer 
une clé privée          # qui sert à déchiffrer


#--------CREATION D UN TUNNEL SSH--------


1 # chiffrement asymétrique pour s échanger 
    # clé secrète de chiffrement symétrique 

2 # on utilise tout le temps la clé de chiffrement
    # symétrique pour chiffrer les échanges

SERVEUR -> ASYM PUBLIC KEY 1 -> CLIENT
CLIENT -> NEW SYM KEY 2 >> (CRYPTE EN KEY 1) -> SERVEUR


#-----TRANSFORMER SA MACHINE EN SERVEUR-----


sudo apt-get install openssh-server
sudo /etc/init.d/ssh start      # server on
sudo /etc/init.d/ssh stop       # server off

/etc/ssh/ssh_config             # config
sudo /etc/init.d/ssh reload     # prendre en compte les changements

#   SE CONNECTER 

ssh login@ip 
#   ip locale = ipconfig
#   www.whatismyip.com

simuler une connexion réseau
# depuis votre PC à votre PC
# Utilisez l IP 127.0.0.1 ou localhost  

#   ip
ip -c -4 addr


# STATUS DU RESEAU
sudo service ssh status

# VOIR LE PORT
grep Port /etc/ssh/sshd_config
netstat -l 

