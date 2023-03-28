<?php

    session_start();
    require_once('connection_db.php');




//recuperation du status qui stocké dans la bdd sous forme de booléen
   $status = $_GET['status'];
   $id = $_GET['intervention'];

//requette pour  changer l'etat du ticket
   $reqUpdate = $con->prepare('UPDATE `interventions` SET `status`= ?  WHERE `idinterventions` = ?');
   $reqUpdate->execute(array( $status,$id ));

   header('Location:interventions.php');

?>