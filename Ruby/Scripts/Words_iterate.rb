text = "Hier, j’ai participé à une réunion d’anciens élèves du collège. Tous mes camarades de classe étaient présents. Certains sont devenus fonctionnaires, d’autres sont entrepreneurs. On a parlé pendant plusieurs heures du bon vieux temps, de nos études, de nos réussites. On m’a demandé si je pensais avoir réussi ma vie, moi aussi. Je n’ai rien répondu, je suis resté silencieux quelques secondes. Et tous m’ont regardé bizarrement."

# hash vide par defaut 0
frequence = Hash.new(0)

# triage de signes + minuscule + spilt par l espace
mots = text.tr(",.-;:","").tr("’"," ").downcase.split(' ')

# chaque x q un mot existe ds le tableau on rajoute 1
mots.each do |mot|
    frequence[mot] += 1
end

# trier tableau par le count + decroissant
tabReverse = frequence.sort_by{|mot,count| count}.reverse!

# boucle pour afficher le tableau
tabReverse.each do |mot,count|
puts "#{mot} : est retrouvé #{count} X "
end
