 <?php
 

 $jsondata = file_get_contents('sample_post.json');
   $data = json_decode($jsondata, true);
   
   addRecords($data);
   
   function addRecords($records){
	 
	 // echo "<pre>"; print_r($records); 
	  $indexArray =  array();
      for($i=0; $i<=count($records);$i++){
      	//echo "hey";
      	if(isset($records[$i])){
	        $id = $records[$i]['_id'];
	        $msg = $records[$i]['body'];	
	        //print_r (explode(" ",$msg));
	        $ind = explode(" ",$msg);
	        foreach ($ind as $key => $value) {
	        	//echo $value;
	        	 $ind = str_replace(',', ' ', $ind);
	        	 //$ind = str_replace("'", ' ', $ind);
	        	 $ind = preg_replace('/[^A-Za-z0-9\-]/', '', $ind);
	        	if(isset($indexArray[$msg])){ //echo "<____Con1__>";
                 $ids = $indexArray[$msg].",".$id;
                 $indexArray[$value][] = $ids;
	        	}else{ 
	        	  $indexArray[$value][] = $id;
	        	  //echo "--><pre>".$indexArray[$value];
	        	}
	        	# code...
	        }
	        //if(isset($indexArray[$msg]))
	       insertRecords($id,$msg);
	      }
      }
     // echo "<pre>";  print_r($indexArray);
      AddKeywords($indexArray);
       
	  
	   
   }
   function insertRecords($id,$msg){
	   if(checkRecords($id)){
	    $con = connectDB();
		$sql = "INSERT INTO message (mId, message) VALUES ('".$id."', '".$msg."')";

		if ($con->query($sql) === TRUE) {
		  echo "New record created successfully";
		} else {
		  echo "Error: " . $sql . "<br>" . $con->error;
		}

		$con->close();
		}
	   
   }
   function checkRecords($id){
	   $con = connectDB();
  
	    $sql = "SELECT * FROM message WHERE mId = '".$id."' ";
	    $result = $con->query($sql);
	   if ($result->num_rows > 0) {
           return false;
	   }else{
	   	return true;
	   }
      $con->close();
   }
   function AddKeywords($keywords){
     foreach ($keywords as $key => $ids) {
     	$id = implode(",",$ids);
	   	//echo "Key:".$key;
	   	//echo "id:".$ids;
	   	insertKeywords($key,$id);
	   }
   }
   function insertKeywords($key,$id){
	   
	    
	    if(checkKeywords($key)){
	    $con = connectDB();
		$sql = 'INSERT INTO keywords (keyword, ids) VALUES ("'.$key.'", "'.$id.'")';
		if ($con->query($sql) === TRUE) {
		  echo "New record created successfully";
		} else {
		  echo "Error: " . $sql . "<br>" . $con->error;
		}

		 $con->close();
		}
	   
   }
    function checkKeywords($key){
	  $con = connectDB();
  
	    $sql = "SELECT * FROM keywords WHERE keyword = '".$key."' ";
	    $result = $con->query($sql);
	   if ($result->num_rows > 0) {
           return false;
	   }else{
	   	return true;
	   }
      $con->close();
   }
  
   function connectDB(){
		$servername = "localhost";
		$username = "root";
		$password = "";

	// Create connection
	$conn = new mysqli($servername, $username, $password,"heyhub");


	if ($conn->connect_error) {
	  die("Connection failed: " . $conn->connect_error);
	}
     
return $conn;
   }
 
 ?>