<?php

require_once "CLASS" . DIRECTORY_SEPARATOR . "Openweather.php";

$apiId = "0387ed35ef51a2017711ca1321700a27";

$meteo = new OpenWeather($apiId);
$meteo->ApiInit("paris", "fr");
