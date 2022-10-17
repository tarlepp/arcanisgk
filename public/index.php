<?php

echo "hello world!";

$pdo = new PDO('mysql:dbname=some-database;host=database', 'root', 'password');

$stmt = $pdo->query('SELECT NOW();', PDO::FETCH_ASSOC);
$stmt->execute();
$results = $stmt->fetch();

var_dump($results);
