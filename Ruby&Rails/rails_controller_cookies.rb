#====================================
#           RUBY & RAILS

#------------------------------------
#             COOKIES

DOC     # actionDispatch::Cookies

creer un cookies

cookies[:username]="toto"
# par defaut le cookie expire pour la session

cookies[:username]={
    name:"john",
    expires: 1.month.from_now
}

cookies.signed
# pour checker la validité d un cookie
# permet a js de recupere des infos verifier
# idem pour serveur

cookies.encrypted
# besoin d une clé pour recup la donnée

cookies.permanent
# date d'expiration maximal

cookies.permanent.signed
# cumulable

cookies.delete(:username)
# suppr la clé correspondant a username


#               JSON

# pour sauvergarder un objet en cookies
# json.generate

cookies[:username]={
    value JSON.generate({name:"john"}),
    expires: 1.month.from_now
}

# pour l inspecter
puts JSON.parse(cookie[:username]).inspect
# terminal
