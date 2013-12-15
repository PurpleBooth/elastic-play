#!/usr/bin/env php
<?php
require 'vendor/autoload.php';

$client = new Elasticsearch\Client();

$searchParams['index'] = 'playing';
$searchParams['body']['query']['match']['_all'] = 'Street';
$queryResponse = $client->search($searchParams);

var_dump($queryResponse);
