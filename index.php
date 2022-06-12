<?php include 'conn.php';?>
<!DOCTYPE HTML>
<html>
<head>
    <title>Lab1</title>
</head>

<body>
    <form method="GET" action="genre.php">
    <p>Films by genre <select name="genre" id="genre">
            <?php
            
            $sqlSelect = "SELECT DISTINCT title FROM $db.genre";
            foreach ($dbh->query($sqlSelect) as $cell) {
                echo "<option>$cell[0]</option>";
            }
            ?>
        </select>
        <button> ОК </button></p>
    </form>


    <form method="GET" action="actor.php">
        <p>Films by actor <select name="actor" id="actor">
            <?php
            $sqlSelect = "SELECT DISTINCT name FROM $db.actor";
            foreach ($dbh->query($sqlSelect) as $cell) {
                echo "<option>$cell[0]</option>";
            }
            ?>
        </select>
        <button> ОК </button></p>
    </form>

    <form method="GET" action="date.php">
        <p>Films by date <select name="date_1" id="date_1">
            <?php
            $sqlSelect = "SELECT DISTINCT date FROM $db.FILM";
            foreach ($dbh->query($sqlSelect) as $cell) {
                echo "<option>$cell[0]</option>";
            }
            ?>
        </select>
        <select name="date_2" id="date_2">
            <?php
            include 'conn.php';
            $sqlSelect = "SELECT DISTINCT date FROM $db.FILM";
            foreach ($dbh->query($sqlSelect) as $cell) {
                echo "<option>$cell[0]</option>";
            }
            ?></p>
        </select>
        <button> ОК </button>
    </form>
</body>

</html>