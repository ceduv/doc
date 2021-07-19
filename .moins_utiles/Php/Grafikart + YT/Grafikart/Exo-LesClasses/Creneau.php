<?php
// class defini le fonctionement d un systeme
// vulgairement THIS == L OBJET CREE

class Creneau
{
    public $start;              // definir une propriete : public

    public $finish;

    public function  toHTML(): string
    {
        return "<strong>{$this->start}h</strong> à <strong>{$this->finish}h</strong>";
    }

    public function __construct(int $debut, int $fin)       //  methode - fonction dans un objet
    {
        $this->start = $debut;  // on attribut $debut a la propriete $start
        $this->finish = $fin;
    }
    //  La pseudo-variable $this est disponible lorsqu'une méthode est appelée depuis un contexte objet. $this est la valeur de l'objet appelant. 

    public function inclusHeures(int $heure): bool
    {
        return $heure >= $this->start && $heure <= $this->finish; // verifie si l heure passer est >= a start et <= a finish
    }

    public function intersect(Creneau $creneau): bool // typage, je donne un nom a l objet
    {
        //  mon objet-> appel methode inclu heures parametre start du creneau passé ******** devrait renvoyer false
        return  $this->inclusHeures($creneau->start) || // est ce que l heure passer en parametre est dans mon creneau actuel
            $this->inclusHeures($creneau->finish) || // idem pour l heure de fin
            ($this->start > $creneau->start && $this->finish < $creneau->finish); // est ce que le creneau passe englobe le mien
        //ex objet a9 b12 // param c7 d13     c7[ a9 . b12 ]d13  le creneau passe englobe donc  TRUE
    }
}

//  PHP permet aux développeurs de déclarer des constructeurs pour les classes. Les classes qui possèdent une méthode constructeur appellent cette méthode à chaque création d'une nouvelle instance de l'objet, ce qui est intéressant pour toutes les initialisations dont l'objet a besoin avant d'être utilisé.  __construct
