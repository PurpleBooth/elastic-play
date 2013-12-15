#!/usr/bin/env php
<?php
require 'vendor/autoload.php';

$faker = Faker\Factory::create();

$client = new Elasticsearch\Client();

foreach(range(0, 999) as $count) {
    $client->index(
        array(
          'index' => 'playing',
          'type' => 'delivery-address',
          'body' => array(
              'id' => $count,
              'name' => $faker->name,
              'address' => $faker->address,
              'description' => $faker->text,
          )
        )
    );
}