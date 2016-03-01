<?php

function from($date)
{
    return $date->add(new DateInterval('PT'.pow(10, 9).'S'));
}
