#==================================================
                # CONCATENATION

# REMPLACER .push et + ou += par <<
#
alphabet = ["a", "b", "c"]
alphabet.push("d") # .push
alphabet<<("d")

caption = "A giraffe surrounded by "
caption += "weezards!" # +=
caption<<"weezards!"

#----
drink = "espresso"
"I love " + drink
"I love " << drink
# ==> I love espresso

#----
age = 26
"I am " + age.to_s + " years old."
"I am " << age.to_s << " years old."
# ==> "I am 26 years old."

#----
"I love #{drink}."
"I am #{age} years old."