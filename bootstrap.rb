#       KEYWORDS

bootstrap => component-design

!important => prend le dessus sur regle bootstrap
#       COLORS

primary =>  bleu
success =>  vert
info    =>  cyan
warning =>  orange
danger  =>  rouge

#       TEXT

class="text-justify"    
class="text-center"
class="text-left"
class="text-right"

#       BTN
-colors
class="btn btn-primary"
class="btn btn-success"
class="btn btn-info"
class="btn btn-warning"
class="btn btn-danger"
-size
class="btn btn-primary btn-lg"  =>  large

#       LIST

class="list-inline"

#       IMAGE

class="img-rounded"     =>  sqare
class="img-circle"      =>  circle
class="img-thumbnail"   =>  sqare+border

#       GRID
div     =   container
div     =   row
div     =   row
#boostrap = 12 colones

class="col-xs-6" => col ->  number of colones
                    xs  ->  screen width
                    6   ->  number of colone / 1
#   xs  ->  extra small (phone)
#   sm  ->  small device
#   md  ->  medium device
#   lg  ->  large device

# ex :

<div class="container">
  <div class="row">
    <div class="col-xs-12 col-sm-6 col-md-3">
      <!-- div class="card" -->
    </div>
    <div class="col-xs-12 col-sm-6 col-md-3">
      <!-- div class="card" -->
    </div>
    <div class="col-xs-12 col-sm-6 col-md-3">
      <!-- div class="card" -->
    </div>
    <div class="col-xs-12 col-sm-6 col-md-3">
      <!-- div class="card" -->
    </div>
  </div>
</div>