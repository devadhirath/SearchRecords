<!DOCTYPE html>
<html lang="en">
<head>
  <title>HeyHub Test</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style> 
input[type=text] {
  width: 130px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
  background-color: white;
  background-image: url('searchicon.png');
  background-position: 10px 10px; 
  background-repeat: no-repeat;
  padding: 12px 20px 12px 40px;
  -webkit-transition: width 0.4s ease-in-out;
  transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
  width: 100%;
}
</style>
</head>
<body>
<?php 

   //$con = connectDB();
   $servername = "localhost";
$username = "root";
$password = "";
$dbname = "heyhub";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
} 
  ?>
<div class="container">
  <h2>HeyHub Test</h2>
  <p> <input type="text" name="search" placeholder="Search.."></p>            
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Id</th>
        <th>Message</th>
        
      </tr>
    </thead>
    <tbody id="records">
  <?php   
     $sql = "SELECT * FROM message";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
      // output data of each row
      while($row = $result->fetch_assoc()) {
        //echo "id: " . $row["mId"]. " - message: " . $row["message"] . "<br>";
        ?>
         <tr>
        <td><?php echo $row["mId"];?></td>
        <td><?php echo $row["message"];?></td>
        
      </tr>
        <?php
      }
    } else {
      echo "0 results";
    }
    $conn->close();
    ?>
      
    </tbody>
  </table>
</div>
<script type="text/javascript">

  $(document).ready(function(){

    $("input").keyup(function(){
        var search = $(this).val();

        //if(search != ""){

            $.ajax({
                url: 'search.php',
                type: 'post',
                data: {search:search, type:1},
                dataType: 'json',
                success:function(response){
                     console.log(response);
                    var len = response.length;
                    $("#records").empty();
                    for( var i = 0; i<len; i++){
                        var id = response[i]['mId'];
                        var name = response[i]['message'];

                        $("#records").append("<tr><td>'"+id+"'</td><td>'"+name+"'</td></tr>");

                    }

                    
                }
            });
       // }

    });

});
 

</script>
</body>
</html>
