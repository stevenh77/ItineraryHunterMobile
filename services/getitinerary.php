<?php
include 'config.php';

$sql = "select i.id, i.title, i.duration, i.description, i.picture " . 
		"from itinerary i " .
		"where i.id=:id ";
		
try {
	$dbh = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass);	
	$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$stmt = $dbh->prepare($sql);  
	$stmt->bindParam("id", $_GET[id]);
	$stmt->execute();
	$itinerary = $stmt->fetchObject();  
	$dbh = null;
	echo '{"item":'. json_encode($itinerary) .'}'; 
} catch(PDOException $e) {
	echo '{"error":{"text":'. $e->getMessage() .'}}'; 
}

?>