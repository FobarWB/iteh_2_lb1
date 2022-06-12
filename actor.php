<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Actor</title>
</head>

<body>
<?php
    include "conn.php";
    $actor = $_GET['actor']; 
    $sqlSelect = $dbh->prepare(
    "SELECT * FROM $db.actor
    join $db.film_actor on $db.actor.id_actor = $db.FILM_actor.FID_actor
    join $db.film on $db.film_actor.fid_film = $db.film.id_film
    where $db.actor.name = :actor"
    );
    $sqlSelect->execute(array('actor' => $actor));
    echo "<table border ='1'>";
    echo "<tr><th>Actor</th><th>Film</th><th>Date</th><th>Country</th><th>Quality</th><th>Producer</th><th>Director</th><th>Carrier</th></tr>";
    while ($cell = $sqlSelect->fetch(PDO::FETCH_BOTH)) {
        $film = $cell[5];
        $date = $cell[6];
        $country = $cell[7];
        $quality = $cell[8];
        $producer = $cell[11];
        $director = $cell[12];
        $carrier = $cell[13];
        echo "<tr><td>$actor</td><td>$film</td><td>$date</td><td>$country</td><td>$quality</td><td>$producer</td><td>$director</td><td>$carrier</td></tr>";
    }
    ?>
</body>
<html>