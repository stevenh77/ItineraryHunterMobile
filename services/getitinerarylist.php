<?php
include 'config.php';

$sql = "select i.id, i.title, i.duration, i.description, i.picture " . 
		"from itinerary i " .
		"where i.categoryId=:id order by i.title";

try {
	$dbh = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass);	
	$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$stmt = $dbh->prepare($sql);  
	$stmt->bindParam("id", $_GET[id]);
	$stmt->execute();
	$itineraries = $stmt->fetchAll(PDO::FETCH_OBJ);  
	$dbh = null;
	echo '{"items":'. json_encode($itineraries) .'}'; 
} catch(PDOException $e) {
	echo '{"error":{"text":'. $e->getMessage() .'}}'; 
}

?>