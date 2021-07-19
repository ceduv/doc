<?php

/**
 * OpenWeather
 */
class OpenWeather
{

    private $apiKey;

    public function __construct(string $apiKey)
    {
        $this->ID = $apiKey;
    }

    /**
     * getForecast
     *
     * @param  mixed $ville
     * @param  mixed $pays
     * @return void
     */
    public function getForecast(string $ville, string $pays)
    {
        $curl = curl_init("api.openweathermap.org/data/2.5/weather?q=$ville&appid={$this->ID}&lang=$pays&units=metric");
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        $data = curl_exec($curl);
        $data = json_decode($data, true);
        $datetime = new DateTime;
        echo $datetime->format('Y-m-d');
        echo 'il fait ' . $data['main']['temp'] . ' °C a paris .';
        echo $data['weather']['0']['description'];

        var_dump($data);
    }
}
