<?php 
$navlink='';
$title = "Composez votre glace";
//checkbox checked
$parfums = [
    'fraise' => 4,
    'vanille' => 3,
    'chocolat'=> 5
];
// radio
$cornets = [
    'pot' => 2,
    'cornet' => 3
];
$supplements = [
    'pepites' => 1,
    'chantilly' => 0.5
];
$ingredients=[];
$total = 0;

if (isset($_GET['gout'])){
    foreach($_GET['gout'] as $parfum){
        if (isset($parfums[$parfum])){
        $ingredients[] =$parfum;
        $total +=($parfums[$parfum]);
        }
    }
}
if (isset($_GET['type'])){
    $cornet = $_GET['type'];
        if (isset($cornets[$cornet])){
        $ingredients[] =$cornet;
        $total +=($cornets[$cornet]);
        }
    
}
if (isset($_GET['supp'])){
    foreach($_GET['supp'] as $supp){
        if (isset($supplements[$supp])){
        $ingredients[] =$supp;
        $total +=($supplements[$supp]);
        }
    }
}

require "header.php";

?>
<br><br><br>
<h1>Composez votre Glace</h1>


<form action="/Exo/Grafikart/Exo(8)Dates/jeu2.php" method="GET">
    <h2>Parfums</h2>
        <?php foreach($parfums as $parfum=>$prix1): ?>
        <div class="checkbox">
            <label>
            <?= checkbox('gout', $parfum , $_GET) ?>
            <?=$parfum?> - <?=$prix1?> €
            </label>
        </div>
        <?php endforeach; ?>
    <h2>Contenant</h2>
        <?php foreach($cornets as $cornet=>$prix2): ?>
        <div class="radio">
            <label>
            <?= radio('type' , $cornet , $_GET) ?>
            <?=$cornet?> - <?=$prix2?> €
            </label>
        </div>
        <?php endforeach ?>
    <h2>Supplements</h2>
        <?php foreach($supplements as $sup=>$prix3): ?>
        <div class="checkbox">
            <label>
            <?= checkbox('supp', $sup , $_GET) ?>
            <?=$sup?> - <?=$prix3?> €
            </label>
        </div>
    <?php endforeach; ?>
    <button type="submit"class="btn btn-primary">Composez ma glace</button>

</form>

<?php
    echo "$total" ;

?>


<?php
require "footer.php";
?>