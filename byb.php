<?php 
/**
 * file: byb.php
 * purpose: format litterature list as tex / bybliographic database.
*/

header("Content-type: text/html; charset=iso-8859-1"); // danish etc. charset

include_once "db.php"; // database connection ($mysqli)

$sql = "SELECT * FROM `libri` order by `Author`";

$result = $mysqli->query($sql);

while($row = $result->fetch_assoc()){
     print "\n@Book{" . strtoupper( substr($row['Author'], 0,4)) . "_" . $row['Year']
     . ",\n Author={" . $row['Author'] . "},\n"
     . "Title={" . $row['Title'] . "},\n"
     . "Publisher={" . $row['Where'] . "},\n"
     . "Year=" . $row['Year'] . "}\n";
   }
?>
