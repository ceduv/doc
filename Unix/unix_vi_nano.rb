#--------------------------------
#            UNIX


#-----------NANO/VI--------------


# ouvrir editeur de texte dans le shell 


#--------------NANO--------------


nano file.txt	


^G  # afficher l aide
^K  # couper la ligne de texte (et la mettre dans le presse-papier)
^U  # coller la ligne de texte que vous venez de couper
^C  # afficher à quel endroit du fichier votre curseur est positionné
^W  # rechercher dans le fichier
^O  # enregistrer le fichier (écrire)
^X  # quitter Nano

# .nanorc ds home             pour config perso
sudo nano /etc/nanorc/      # pour conf all users
set mouse
set autoindent
set smarthome
 

#----------------VI----------------


vimtutor                # tutoriel vim
                        # installer vim-common si bug

vi file.txt

i                       # inserer
esc                     # retour en  cli
:q                      # quitter
:q!                     # quitter sans save
:w                      # save
:x                      # save & quit 


#-------------SE DEPLACER-------------


  h  j   k  l     sur le clavier
 <- bas haut ->

home  0                 # debut de ligne 
end   $                 # fin de ligne
w                       # de mot en mot


#----------OPERATIONS STANDARD----------


# PLACER CURSEUR PUIS :

x           # effacer des lettres
4X          # 4 prochaines lettres
d           # effacer des mots, des lignes…
dd          # supprimer/coupe une ligne
2dd         # 2 lignes
dw          # supprimer un mot
3dw         # 3 prochains mots
d0 d$       # supprimer le début ou la fin de la ligne
            # d0 curseur au debut
            # d$ curseur a la fin

yy          # copier        5yy -> plusieux x
dd          # couper/suppr  3dd -> plusieux x
p           # coller        6p  -> plusieux x

r           # remplacer une lettre
rs          # remplace la lettre par s

u           # annuler les modifs  4u
G           # sauter a la derniere ligne
10G         # sauter a la ligne 10
gg          # sauter a la premiere ligne



#------------OPERATION AVANCEES------------


/           # recherche un mot
/test       # premiere occurence de test
n           # suivant
N           # precedent


#   REMPLACER DU TEXTE

:s                      # rechercher et remplacer du texte
:s/ancien/nouveau       # remplace la première occurrence
                        # de la ligne où se trouve le curseur
:s/ancien/nouveau/g     # remplace toutes les occurrences de
                        # la ligne où se trouve le curseur
:#,#s/ancien/nouveau/g  # remplace toutes les occurrences
                        # dans les lignes n° # à # du fichier
:%s/ancien/nouveau/g    # remplace toutes les occurrences 
                        # LE PLUS UTILE                


#   FUSION DE FICHIER

:r                      # insérer un fichier au curseur
:r autrefichier         # indiquer le nom du fichier à insérer


#   DECOUPER L ECRAN

:sp                     # decoupe l ecran horizontale
                        # voir deux endroits en meme temps
                        # ou 2 fichiers diff
:vsp                    # decoupage verticale

^w,^w   # navigue de viewport en viewport.
^w,->   # viewport droite haut bas gauche
^w,+    # agrandit le viewport actuel.
^w,-    # réduit le viewport actuel.
^w,=    # égalise à nouveau la taille des viewports.
^w,r    # échange la position des viewports.
        # aussi avec « R » pour échanger
^w,q    # ferme le viewport actuel.


#   LANCER UNE COMMANDE EXTERNE

:!    # permet de lancer une commande depuis vim
:!ls  # sans quitter


gvim                    # editeur hors shell


#-------------VIM OPTIONS-------------


options soient activées à chaque démarrage
créer .vimrc dans votre répertoire personnel
/etc/vim        # qui s appelle vimrc
# copier
cp /etc/vim/vimrc  ~/.vimrc
# modifier
syntax on
set background=dark
set number
set showcmd
set ignorecase
set mouse=a


# Activer des options en mode commande

:set option         # ACTIVER
:set nooption       # nodevant le nom de l'option pour la DESACTIVER
# certaines options
:set option=valeur
# Pour connaître l'état d'une option :
:set option?



#-------------- VSCODE --------------


code .		#	ouvrir vscode (ds l emplacement actuel)