<?php

    session_start();


    require_once('connection_db.php');



    if (isset( $_POST['email'] ) and isset( $_POST['password'] )  ) {


        $email = $_POST['email'];
        $password = sha1($_POST['password']);



        // mysqli_query
        $req = $con->prepare('SELECT * FROM `users` WHERE `email` = ? AND `password` = ?');//preparation de la requete
        $req->execute(array($email,$password));//execution de la requete



        $res = $req->rowCount();//renvoit unn boulléenpour savoir si la personne qui se connecte peut avoir acces au autre page

   
        
        if ( $res == 0 ) {
            header('Location:login.php?message=Identifiant ou mot de passe incorrecte&error=ok');//envoie d'un msg a l'utilisateur si on ne trouve pas son compte
            
        }else{
            $data = $req->fetch(); 
            $_SESSION['id'] = $data['idusers'];
            $_SESSION['role'] = $data['role'];
            //redirection de la personne qui c'est connécté vers sa propre page en fonction de son role
            if ( $data['role'] == 'ROLE_USER' ) {
                header('Location:index.php');
            }else if( $data['role'] == 'ROLE_TECH' ){
                header('Location:interventions.php');
            }else if( $data['role'] == 'ROLE_ADMIN' ){
                header('Location:interventions.php');
            }
        }
  


        
    }

?>