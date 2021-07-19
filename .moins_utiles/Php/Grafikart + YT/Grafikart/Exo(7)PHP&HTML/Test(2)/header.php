<?php


/*
<<<XXX 
Heredoc se comporte exactement comme une chaîne de caractères guillemets doubles, sans les guillemets doubles. Cela signifie que les guillemets dans une syntaxe Heredoc n'ont pas besoin d'être échappés, mais que les codes d'échappement listés plus haut peuvent toujours être utilisés. Les variables seront interprétées, mais les mêmes précautions doivent être prises lorsque des variables complexes sont exprimées dans une Heredoc comme avec chaîne de caractères.

ex: 
    return '<li class="nav-item">
        <a class="' .$classe . ' " aria-current="page" href="' . $lien .'">' . $titre .'</a>
    </li>';
===
    return <<<HTML
        '<li class="nav-item">
        <a class="$classe" aria-current="page" href="$lien">$titre</a>
    </li>';
HTML;





 $_SERVER superglobales
   donne des infos dans un array
   Script Server Port Root
   ex : SCRIPT_NAME contient le nom du script fonctionel
 <pre><?php vardump($_SERVER)
 <?= blabla 
*/
require_once "functions.php";
?>


<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.82.0">
    <title><?php if(isset($title)){echo $title;} else{echo " Mon Site";}?></title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/product/">

    

    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.0/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.0/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.0/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="product.css" rel="stylesheet">
  </head>
  <body>
    
<header class="site-header sticky-top py-1">
<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
  <div class="container-fluid">
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav me-auto mb-2 mb-md-0">

      <?= nav_menu('nav-link') ?>
<!--    REMPLACER PAR FONCTION  
  
        <li class="nav-item">
          <a class="nav-link <?php if ($_SERVER['SCRIPT_NAME']==='/Exo/Grafikart/Exo(7)PHP&HTML/Test(2)/index.php'): ?>active<?php endif?> " aria-current="page" href="/index.php">Acceuil</a>
        </li>
        <li class="nav-item">
          <a class="nav-link <?php if ($_SERVER['SCRIPT_NAME']==='/Exo/Grafikart/Exo(7)PHP&HTML/Test(2)/contact.php'): ?>active<?php endif?> " aria-current="page" href="/contact.php">Contact</a>
        </li> 
        
        REMPLACER PAR nav_item
        
        
        -->
        <li class="nav-item">
          <a class="nav-link" href="index2.php">Deuxieme Projet</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">A Venir</a>
        </li>
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
</header>
