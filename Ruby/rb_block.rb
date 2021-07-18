#==================================================
#                    BLOCK


#- BLOCK
    #   PAS UN OBJET    FONCTION ANONYME
    #   Un bloc n'est qu'un bout de code entre do..end ou {}
    #   peut être passé à des méthodes telles que .each ou .select.
    #   il ne peut pas etre save ds une variable
    #   executer du code ds un cas concret (fonction anonyme)
    #   1 seul block a une fonction
    #   on ne peut pas reutilisé le block car on ne peut pas le save

#- PROC
    #   OBJET  CALLBACK
    #   proc est un saved block
    #   DRY => Don't Repeat Yoursel => code propre
    #   (!=BLOCK)
    #   peuvent être appelés encore et encore sans les réécrire
    #   ".call" renvoit valeur de retour de la méthode
    #   "&" convertir des symboles en procs en utilisant (idem lambda)

#- LAMBDA
    #   OBJET
    #   (!=PROC)
    #   lambda vérifie le nombre d'arguments qui lui sont passés
    #   lambda errOR si mauvais nombre d'arguments,
    #   proc ignorera les arguments inattendus et affectera nil aux manquants
    #   lambda return => contrôle à la méthode appelante
    #   proc return, immédiatement, sans revenir à la méthode appelante


#==============================================


# MAP(!)
# Invoque le bloc donné une fois pour chaque élément de self
# Crée un tableau contenant les valeurs renvoyées par le bloc
# = collect ?

# INSPECT
# renvoie une chaîne qui affiche addrinfo lisible par l'homme

# YIELD
# cette methode attend un block , le block est passé au yield


#==============================================


odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

ints = odds_n_ends.select{|x| x.is_a? Integer}
#                        {|x| x.is_a? Integer} BLOCK
puts ints


#==============================================


tab1 = %w[1 3 6]                # raccourci tab => %w() %w[]
tab2 =tab1.map{|t| t.to_i*2}    # tab1 contien string
                                # to_i sinon 11 33 66
puts tab2.inspect


#==============================================


def demo
    puts "bonjour"
    yield ('ced')
    puts "au revoir"
    yield ('alex')
end

demo {|name| puts "Comment ca va #{name} ?"}


#==============================================


eleves = [                                  # cree tab de hash
    {note: 15, nom: "ced"},
    {note: 16, nom: "alex"},
    {note: 12, nom: "keke"},
    {note: 8, nom: "clem"}
]

def alamoyenne (eleves)                     # cree methode param eleves tab
    # ds la methodes eleves est isolé de l exterieur => le passé en param
    eleves.each do |eleve|                  # on stock chaque eleve ds eleve
        if eleve[:note] >= 10               # si la note >= 10
            yield(eleve)                    # produit/rapporte/donne eleve
        end
    end
end

alamoyenne(eleves) {|eleve| puts "#{eleve[:nom]} a la moyenne"}
# meth(para)