<?php 
	include "config.php";
?>

<?php
$question= $_POST["question"];
$question=mysqli_real_escape_string($con,$question);

//Insert Question in database 

$sqlQuery = "insert into samplequestion set question = '$question'";
//echo $query;
mysqli_query($con,$sqlQuery);



//Getting qId to answer this saved question

$result = mysqli_query($con, "Select * from samplequestion where question = '$question' ");
$num = mysqli_num_rows($result);

if($num ==1){
	
	$row = mysqli_fetch_assoc($result);
	//print_r($row);
	
	$qId= $row["qId"];

	//header("location:".$SITE_URL.$row["userType"]."/home.php");
}

//$question="exampleQuestion";
		$answer = exec("python pyScript/pyODQA.py ".$question);
		
		//echo "<br>";
		//echo "answer : ".$answer;

		//insert ans in our database
		$sqlQuery = "insert into sampleanswer set qId = $qId , answer = '$answer'";
		//echo $sqlQuery;
		mysqli_query($con,$sqlQuery);



header("location:".$SITE_URL."index.php?qId=".$qId);


