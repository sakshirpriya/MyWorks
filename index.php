	<?php
	include 'DataBaseFiles/DBConnection.php';
	if(isset($_REQUEST["submit"]))
	{
		$movie=$_REQUEST["movie"];
		//echo $movie;
		$url='https://api.themoviedb.org/3/search/movie?query='.$movie.'&api_key=7751e46fed83292e0a743fc191d7c916';
		$data=file_get_contents($url);
		$Data=json_decode($data,true);
		$characters = $Data['results'];
		//insert movies which are not in our database
		$MovieCount=$Data['total_results'];
		foreach ($characters as $character) {
		$ImagesPath='https://image.tmdb.org/t/p/w500'.$character[poster_path];
		$Title=$character[title];
		$ReleaseDate= $character[release_date];
		$Rating=$character[vote_average];
		$Overview= $character[overview];
		$ID=$character[id];


		$query = "SELECT * FROM MovieData";  
	   $result = mysqli_query($con, $query);
	   $count=0;
	   while($row = mysqli_fetch_array($result))  
	   {  
	     if($row['ID']==$ID || $row['Title']==$Title){
	      $count=$count+1;
	    }
	  }
	  if($count==0){
	  	$InsertData = "INSERT INTO MovieData (ID,Title,ReleaseDate,Rating,Overview,ImagesPath) VALUES ('$ID','$Title','$ReleaseDate','$Rating','$Overview','$ImagesPath')"; 
	  	mysqli_query($con, $InsertData);

	  }

	 

	   }

	}
		
		  ?>

	<!doctype html>
	<html lang="en">
	  <head>
	    <!-- Required meta tags -->
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	    <!-- Bootstrap CSS -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	    <title>API SEARCH</title>
	  </head>
	  <body>
	<div class="container">
	    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	  <a class="navbar-brand" href="index.php"><img src="Images/logo.svg" width="80px" height="40px"><b>The Movie DataBase</b></a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>

	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	     
	      <li class="nav-item">
	        <a class="nav-link" href="LocalDataBase.php">Local Search</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="index.php">API Search</a>
	      </li>
	    </ul>
	    <form class="form-inline my-2 my-lg-0">
	      <input class="form-control mr-sm-2" type="search" placeholder="API Search" aria-label="Search" name="movie">
	      <button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="submit">Search</button>
	    </form>
	  </div>
	</nav>
	<hr><hr>
	<!-- API result will print here -->
				<?php 

				$MovieCount=$Data['total_results'];
				if($MovieCount==-1){
					echo "<h1>Sorry! I am afraid if this movie in our database.</h1>";
				}else if($MovieCount==0){
						echo "<h1>Please Search Your movie from Search bar....</h1>";
				}else{
					echo "<h3>Total records found in database: $MovieCount</h3>";
				}

				 ?>

	    <?php 
	foreach ($characters as $character) {
		$path='https://image.tmdb.org/t/p/w500'.$character[poster_path];
	 echo "<div class='row'>";
	  echo  "<div class='col col-lg-2'><img src=\"$path\" width=180px height=250px class='rounded float-left'></div>";
	   	echo "<div class='col col-lg-10'>";
	   		echo "<h4><b>$character[title]</b></h4>";
	   		echo "<p><b>Release Date:</b> $character[release_date]</p>";
	   		echo "<p><b>User Rating:</b> $character[vote_average]</p>";
	   		;
	   		echo "<p><b>Overview:</b> $character[overview]</p>";
	  echo "	</div>";
	  echo "</div>";
	  echo "<br>";
	  echo "<hr>";

	   }
	 ?>


	 </div>
	    <!-- Compiled and minified JavaScript -->
	   

	    <!-- Optional JavaScript -->
	    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
	    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	  </body>
	</html>