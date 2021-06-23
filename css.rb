#               CSS 

#-----------------------------
#              VOCABULARY 

color,font-size,font-weight     =>      css properties
color : #0080ff                 =>      style rule
h3                              =>      CSS selector

#-----------------------------
#              UNITE

1vh         ->      1% ecran
100vh       ->      100% ecran

#-----------------------------
#               URL 

url
body{background-image:url("../images/...")}
    
#-----------------------------
#           CALL CLASS/ID 
id      ->    unique      =>      #id
class   ->    reccurent   =>      .class

#-----------------------------
#           linear-gradient

background-image: linear-gradient(
    -225deg,
    rgba(0, 101, 168, 0.6) 0%,
    rgba(0, 36, 61, 0.6) 50%),
    url("http...");
background-size: cover;

#------------------------------
#         mouseover
a:hover{}

#------------------------------
#         center

width: 700px;
margin: auto;

#---

line-height    # hauteur de ligne

#------------------------------
#         allignement 
#   H
justify-content
#   V
align-items

#------------------------------
#         POSITION

ABSOLUT     ->      EPINGLER
RELATIVE    ->      EN FONCTION DE L ABSOLU / SINON DU BODY

#------------------------------
#         FLEXBOX

# flexbox => div qui compose les autres

.flex{
    display: flex;
    justify-content: space-around; #repartition des flexboxs
                        #space-between -> entre les elements
    align-items :center;    #aligne sur laxe verticale
}                   
.flex-item{
    flex: 0 0 200px; # 0 0 ni plus ni moins de place que les 200px en 3eme p
}
.flex-item2{
    flex: 1 0 auto; #va combler l espace a cause du 1 et du auto avec les autres items
}
