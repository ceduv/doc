<?php

function add_view($linkData, int $filevalue)
{
    if (file_exists($linkData)) {
        file_put_contents($linkData, ++$filevalue);

        return (int)file_get_contents($linkData);
    } else {
        fopen($linkData, 'x',);
        file_put_contents($linkData, 1);

        return (int)file_get_contents($linkData);
    }
}
