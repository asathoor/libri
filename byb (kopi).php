<?php 
/**
 * file: byb2.php
 * purpose: Create a BibTex file
*/

header("Content-type: text/html; charset=iso-8859-1"); // danish etc. charset ?>

<h1>Libri Modue: Create New BibTex File</h1>
<?php 
/* Create the BibTex file */
$filename = "libri_".date('YmdHis').".bib";
$intro = "comment{This BibTex File Created by Per Thykjaer Jensen's Libri Module}\n\n";
$file = fopen($filename, "w") or die("Could not create the file!"); // open the file

fwrite($file,$intro);

print "<p>Download: <a href='".$filename."'>".$filename."</a></p>";

include_once "db.php"; // database connection ($mysqli)

$sql = "SELECT * FROM `libri` order by `Author`";

$result = $mysqli->query($sql);

while($row = $result->fetch_assoc()){
    $books[] = "\n@". $row['Type'] ."{" . strtoupper( substr($row['Author'], 0,4)) . "_" . $row['Year']
     . ",\n Author={" . $row['Author'] . "},\n"
     . "Title={" . $row['Title'] . "},\n"
     . "Publisher={" . $row['Where'] . "},\n"
     . "Year=" . $row['Year'] . "}\n";
   }

/* write all to the file */
foreach($books as $book){
    fwrite($file,$book);
    //file_put_contents($filename, $book, FILE_APPEND | LOCK_EX) or die("Shit Microsoft error " . rand(245452,474744777));
    echo "$book <br>";
}

fclose($filename); // that's it

?>
