<?php
	// DB Connection
	$user="root";
	$pw = "";
	$dsn ="odbc:ig2_3tier_automarken";
	$dbconn  = new PDO($dsn,$user,$pw);    
  
    $username = $_GET['username'];
    $password = $_GET['password'];
    $email = $_GET['email'];
    $mobile = $_GET['mobile'];
    $plz = $_GET['plz'];
    $wohnort = $_GET['wohnort'];

    //$sql = 'INSERT INTO tbl_uebung2 (username, password, email, mobile, plz, wohnort)';
    //$sql .=" VALUES ('$username', '$password', '$email', '$mobile', '$plz', '$wohnort')";
	$sql = "CALL sps_DemoPersonen('$username', '$password', '$email', '$mobile', '$plz', '$wohnort')";
    
    if($dbconn->query($sql)){
        echo "Records added successfully.";
    } else{
        echo "ERROR: Failed to execute $sql. ";
    }
	
    $sql = 'SELECT * from tbl_uebung3';
    
	echo "<br><br>Ausgabe Tabelle mit Befehl: $sql <br><br>";
	foreach ($dbconn->query($sql) as $row) 
    {
			echo "<br>" . $row["username"]. " " . $row["password"]. " " . $row["email"]. " " . $row["mobile"]. " " . $row["plz"]. " " . $row["wohnort"]. "<br>";
    }
    
?>