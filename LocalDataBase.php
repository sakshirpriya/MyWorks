  <?php
  include 'DataBaseFiles/DBConnection.php';
  ?>

  <!doctype html>
  <html lang="en">
    <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

      <title>Local Database Search</title>
    </head>
    <body>
  <div class="container">
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#"><img src="Images/logo.svg" width="80px" height="40px"><b>The Movie DataBase</b></a>
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
        <input class="form-control mr-sm-2" type="search" placeholder="Local Search" aria-label="Search" name="movie">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit" name="submit">Search</button>
      </form>
    </div>
  </nav>
  <hr><hr>

<!-- According to user input. we will print Movies here -->
  <?php 
  if(isset($_REQUEST["submit"]))
  {
    $movie=$_REQUEST["movie"];
  $query = "SELECT * FROM MovieData";    
  $result = mysqli_query($con, $query);
  while($row = mysqli_fetch_array($result)){
  $FullMovieName = $row[Title];

    if (strpos(strtolower($FullMovieName), strtolower($movie)) !== false) {
      echo "<div class='row'>";
    echo  "<div class='col col-lg-2'><img src=\"$row[ImagesPath]\" width=180px height=250px class='rounded float-left'></div>";
      echo "<div class='col col-lg-10'>";
        echo "<h4><b>$row[Title]</b></h4>";
        echo "<p><b>Release Date:</b> $row[ReleaseDate]</p>";
        echo "<p><b>User Rating:</b> $row[Rating]</p>";
        ;
        echo "<p><b>Overview:</b> $row[Overview]</p>";
    echo "  </div>";
    echo "</div>";
    echo "<br>";
    echo "<hr>";

      }
    } 
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