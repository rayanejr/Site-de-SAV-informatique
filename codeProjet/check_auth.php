<?php
//verifier qu'un compte a ete cree
if (isset( $_SESSION['id'] ) == null) {
    header("Location:login.php");
}

?>