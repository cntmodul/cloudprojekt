<?php
  
    $username = $_GET['username'];
    $password = $_GET['password'];
    $email = $_GET['email'];
    $mobile = $_GET['mobile'];
    $plz = $_GET['plz'];
    $wohnort = $_GET['wohnort'];


    $sql = 'SELECT * from tbl_uebung3';
    
	echo "<br><br>Ausgabe Tabelle mit Befehl: $sql <br><br>";

	echo "<br>" . $username . " " . $password . " " . $email . " " . $mobile . " " . $plz . " " . $wohnort . "<br>";

    
?>
