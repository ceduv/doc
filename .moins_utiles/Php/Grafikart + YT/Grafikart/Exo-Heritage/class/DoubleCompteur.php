<?php
require_once __DIR__ . DIRECTORY_SEPARATOR . "Compteur.php";

class DoubleCompteur extends Compteur
{
    public function recuperer(): int        // cette methode 
    {                                       //  appel
        return parent::recuperer();         // cette methode via parent ::
    }
}

// HERITAGE  class enfants *** extends class parents
// premet de cree une class qui fonctionne un peu differement d une autre 
// ex : class user // admin     avec des fonctionnalites differentes

//////////////////////////////////////////////////

// !!! PRIVER PAR DEFAUT ET ON ADAPTE

// public

// private ne peut pas etre appeler depuis lexterieur  
// doit servir en interne a la class
// seulement ds la classe courante

// protected
// les enfants peuvent y acceder

// Possibilite de rajouter static

///////////////////////////////////////////////////

// CONSTANTE

// Pour DEFINIR une const
//      const INCREMENT = 1;

// Pour RECUPERER une constante 
//      self::CONSTANTE             self fait ref a la classe en cours
//                                  static pour la classe final  (RESOLUTION STATIC A LA VOLEE)

// On peut changer cette constante dans enfants
//      const INCREMENT = 10;
