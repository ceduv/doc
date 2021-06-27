#----------------------------
#          JS

#----------------------------
#      CONDITIONS


if(ver === "blabla"){
    console.log("ok");
} # else    else if


#-----------------------------
#    OPERATEUR DE COMPARAISON


<       => # Moins que: 
>       => # Plus grand que: 
<=      => # Inférieur ou égal à: 
>=      => # Plus grand ou égal à: 
===     => # Est égal à: 
!==     => # N'est pas égal à : 

#*** 
0 == ""         =>      true    #   == si type different essaye de convertir
                                #   ici chaine vide = 0

0 === ""        =>      false   #   type different

if(0)           =>      false
if(''||"")      =>      false
if(null)        =>      false   
if(undefined)   =>      false
if(NaN)         =>      false



#------------------------------
#       OPERATEURS LOGIC

#
#   &&    ||    !== (n'est pas) 

if (weather !== "sunny") # si different de
#   ===
if(!(weather === "sunny")) # si l inverse de l egalité

#------------------------------
#       RACCOURCI

# si username === false car non defini par defaut stranger
#   si isset defaultname = username
let defaultName;
if (username) {
  defaultName = username;
} else {
  defaultName = 'Stranger';
}
#===
let defaultName = username || 'Stranger';