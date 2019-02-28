<?php
	include "header.php";
?>

<form method="post" action="<?php echo $SITE_URL; ?>getAns.php">
		<div style="text-align: center">
			<label>	<b style="font-size: 20px">Question:</b> <br><br>
					<input type="text" class="form-control" name="question" 
					placeholder="            Question ??? Ask Anything .................             " 
					required 
					style="width: 800px" >
			</label>
		</div>

		<br>
		<div  style="text-align: center">
			<label>
				<input type="submit" value="Ask" class="btn btn-primary"  >
			</label>
		</div>
</form>


<div style="text-align: center; margin-top: 80px; ">
	<?php

		 if(isset($_GET["qId"]))
		 {
		 		$qId =$_GET["qId"];
		 		//---------------------------------------------------------------------------------
		     	$sqlqry = "Select * from samplequestion where qId =$qId";
		 		$result3 = mysqli_query($con,$sqlqry);
				$row3=mysqli_fetch_assoc($result3);
				$question= $row3["question"];
				echo "<b><i>Question : </i> </b><b>$question</b><br>";


				//-----------------------------------------------------------------------------------
				$sqlqryans = "Select * from sampleanswer where qId =$qId";
		 		$resultans = mysqli_query($con,$sqlqryans);
				$rowans=mysqli_fetch_assoc($resultans);
				$answer= $rowans["answer"];

				echo "<b><i>Answer : </i> </b>$answer<br>";
		 }
	 
	?>
</div>

<?php
	include "footer.php";
?>

