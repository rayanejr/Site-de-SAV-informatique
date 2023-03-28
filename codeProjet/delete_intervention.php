<?php

    session_start();
    require_once('connection_db.php');

    //conserne l'admin
    

 
   $id = $_GET['id'];


   $reqUpdate = $con->prepare('DELETE FROM `interventions`  WHERE `idinterventions` = ?');
   $reqUpdate->execute(array($id ));

   header('Location:interventions.php');

?>