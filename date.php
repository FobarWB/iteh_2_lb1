<!DOCTYPE HTML>
<html>

<head>
    <title>Date</title>
</head>

<body>
    <?php
    include "conn.php";
    $date_1 = $_GET['date_1'];
    $date_2 = $_GET['date_2'];

    $sqlSelect = $dbh->prepare(
        "SELECT * FROM $db.film
            where $db.film.date between :date_1 and :date_2"
    );
    $sqlSelect->execute(array('date_1' => $date_1, 'date_2' => $date_2));
    echo "<table border ='1'>";
    echo "<tr><th>Film</th><th>Date</th><th>Country</th><th>Quality</th><th>Producer</th><th>Director</th><th>Carrier</th></tr>";
    while ($cell = $sqlSelect->fetch(PDO::FETCH_BOTH)) {
        $film = $cell[1];
        $date = $cell[2];
        $country = $cell[3];
        $quality = $cell[4];
        $producer = $cell[7];
        $director = $cell[8];
        $carrier = $cell[9];
        echo "<tr><td>$film</td><td>$date</td><td>$country</td><td>$quality</td><td>$producer</td><td>$director</td><td>$carrier</td></tr>";
    }
    ?>
</body>
<html>