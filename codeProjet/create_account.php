<?php

    session_start();


    require_once('connection_db.php');



    if (isset( $_POST['email'] ) and isset( $_POST['password'] )  ) {


        $email = $_POST['email'];
        $fullname = $_POST['fullname'];
        $password = sha1($_POST['password']);//sha1 crypter le mdp



        // mysqli_query
        $req = $con->prepare('SELECT `idusers`, `fullname`, `email`, `role` FROM `users` WHERE `email` = ? ');
        $req->execute(array($email));



        $res = $req->rowCount();

        if ( $res != 0 ) {
            header('Location:login.php?message=Cette email appartient deja a un utilisateur&error=ok');
            //verifie si le mail appartien a qq un il renvoit le msg sinon il stock les infos
        }else{
            $reqInsert = $con->prepare('INSERT INTO `users`( `fullname`, `email`, `password`, `role`) VALUES (?,?,?,?) ');
            $reqInsert->execute(array( $fullname, $email, $password ,'ROLE_USER' ));


            header('Location:login.php');
            

    
        }



        
    }

?>