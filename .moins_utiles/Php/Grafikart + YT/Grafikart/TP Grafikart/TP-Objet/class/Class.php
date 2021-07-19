<?php

class Personnages
{

    public $nom;
    public $classe;
    public $faction;

    public $dateDeCreation;

    public $bouger;
    public $skill;

    public $inventaire;

    public function __construct($nom, $classe, $faction, $date, $bouger, $skill, $inventaire)
    {
        $this->nom = $nom;
        $this->classe = $classe;
        $this->faction = $faction;
        $this->dateDeCreation = $date;
        $this->bouger = $bouger;
        $this->skill = $skill;
        $this->inventaire = $inventaire;
    }
}
