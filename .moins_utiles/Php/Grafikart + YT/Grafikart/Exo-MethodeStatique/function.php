<?php

// METHODE STATIQUE
// pas besoin d instance pour fonctionner
// permet d organiser , fonction qui on le meme domaine dans la meme class a call en static

// $this pour call INSTANCE
// self  pour call la CLASS

class Form
{
    public static $class = "form-control";                                    // PROPRIETE STATIC

    public static function checkbox(string $name, string $value = null, array $data = []): string // METHODE STATIC :
    {                                                                           // la methode peut etre appeleer direct sur la classe
        $attributes = '';
        if (isset($data[$name]) && in_array($value, $data[$name])) {
            $attributes .= 'checked';
        }
        $attributes = ' class="' . self::$class . '"';
        return <<<HTML
            <input type="checkbox" name="{$name}[]" value="$value" $attributes> 
HTML;
    }

    public static function radio(string $name, string $value, array $data): string
    {
        $attributes = '';
        if (isset($data[$name]) && $value === $data[$name]) {
            $attributes .= 'checked';
        }
        return <<<HTML
        <input type="radio" name="{$name}" value="$value" $attributes> 
HTML;
    }
}
