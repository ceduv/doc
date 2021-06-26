#-------------------------
#        JQUERY

#   permet de manipuler le DOM (l arbre html)

#------LIEN HTML

# jQuery ui 1.12.1
<script
  src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"
  integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30="
  crossorigin="anonymous"></script>
# jQuery Core 3.x
<script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>

#-------DANS LE FILE .JS
$(document).ready(function(){
    ## le code jquery
});

#-------------------------
#       SELECTEUR

#   large
$(document).ready(function(){
    $("p").hide();  # '' ?     //  .hide !== .show
});
#   selectionne noeud "p" et le hide

#-----------------------------
#        CLASS / ID

#   id class
$("#test").hide();  #   id  ->  #
$(".test").hide();  # class ->  .

#   addClass / removeClass   
$("#cart").addClass('bold');
# pour l id cart ajoute la class bold ( en + )

#           hasClass
# verifie si l element class existe
#ex
$(document).ready(function(){
    $('p').on('click',function(){
        if($(this).hasClass('red')){
            $(this).removeClass("red");
        } else{
            $(this).addClass("red");  
        }
    })
});
# si p a la class red on l enleve sinon on a l ajoute
#   au click sur this p
#   === toggle had/removeclass
$(document).ready(function(){
    $('p').on('click',function(){
        $(this).toggleClass('red');
    })
});

#-------------------------------
#           EVENT

# click
$('#play-button').click();

# callback -> execution en reaction a event
$('#an-element').on('click',function(){
    alert("you have clicked");
})
#-> pose micro sur #anelement - si click -> alert
#ex:
$('p').on('click',function(){
    alert("you have clicked");
})
#
$('p').on('click',function(){
    $(this).addClass("red"); 
})
#-> ajoute la class red au click
#   permet de declencher d autres lg
#   this permet de faire ref au p cliker pas les autres

#-------------------------------
#           AJAX

maj d information sans raffraichir la page

