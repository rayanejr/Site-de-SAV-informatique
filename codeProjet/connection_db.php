<?php
//connexion a la bdd
// mysqli_connect
$con = new PDO('mysql:host=localhost;dbname=mydb', 'root', '', array(
    PDO::ATTR_PERSISTENT => true
));

?>