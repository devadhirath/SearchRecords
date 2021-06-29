 <?php
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
//echo "<pre>";print_r($_POST);
$search = $_POST['search'];
$RecordsIds =  array();
if($search !=""){
 $sql = "SELECT * FROM keywords WHERE keyword LIKE '%".$search."%'";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
      // output data of each row
      while($row = $result->fetch_assoc()) {
      //  echo "<pre>"; print_r($row);
        $ids = explode(",",$row['ids']);
        foreach ($ids as $key => $value) {
        	$RecordsIds[] = "'".$value."'";
        	
        }
        //echo "<pre>"; print_r($ids);
      }
}
 }
 //echo "<pre>"; print_r($RecordsIds);
 $resp =  array();
 if($search !=""){
 $RecIds = implode(",",$RecordsIds);
 $sql = "SELECT * FROM message WHERE mId IN (".$RecIds.")";
}else{
	$sql = "SELECT * FROM message ";
}
 $result = $conn->query($sql);
    if ($result->num_rows > 0) {
    	while($row = $result->fetch_assoc()) {
      //   echo "--><pre>"; print_r($row);
    		$resp[] = $row;
    	}	
    }

    echo json_encode($resp)
 ?>