<?php
	//include connection file to mysql server
	require_once "conn.php";
	
	//σχηματισμός ερωτήματος για την προβολή όλων των μελών
	$query = "SELECT * FROM users";
	//εκτέλεση ερωτήματος και εκχώρηση αποτελέσματος στη μεταβλητή $result
	$result = mysqli_query($conn, $query) or die(mysqli_error($conn));
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>BROWSE</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
  </head>
  <body>
    <header></header>

    <nav id="navigation">
      <div>
          <ul>
              <li class="menu">
                  <p><a href="#">ABOUT</a></p>
              </li>
              <li class="menu">
                  <p><a href="#">BROWSE</a></p>
              </li>
              <li class="menu">
                  <p><a href="#">SEARCH</a></p>
              </li>
              <li class="menu">
                  <p><a href="#">CONTACT</a></p>
              </li>
              <li class="menu">
              <p><a href="#">LOGIN</a></p>
              </li>
          </ul>
      </div>
  </nav>

    <table border="0" cellpadding="10" align="center" id="catalog" width="80%">
<thead>
	<tr>
    	<td> ID        </td>
        <td> FIRSTNAME </td>
        <td> LASTNAME  </td>
        <td> EMAIL     </td>
        <td> ADDRESS   </td>
        <td> CITY      </td>
        <td> COUNTRY   </td>
        <td> PHONE     </td>
        <td> PIC       </td>
		<td> EDIT      </td>
        <td> DELETE    </td>
    </tr>
</thead>

<tbody>

<?php
	$bg = '';
	$counter=0;
	//loop inside result recordset
	while($row = mysqli_fetch_assoc($result)){
		$counter++;
		$id        = $row['id'];
		$firstname = $row['firstname'];
		$lastname  = $row['lastname'];
		$email     = $row['email'];
		$address   = $row['address'];
		$city      = $row['city'];
		$country   = $row['country'];
		$phone     = $row['phone'];
		$pic       = $row['pic'];
		$pic_tag   = '';
		if($pic){
			$pic_tag = "<img src='$pic' class='pic'>";
		}
		
		//set css style to tr elements ($bg)
		if($bg != "odd"){
			$bg = "odd";
		} else {
			$bg ="even";
		}
?>		
	<tr class="<?= $bg ?>">
    	<td> <?php print $counter ?></td>
        <td> <?= $firstname  ?></td>
        <td> <?= $lastname   ?></td>
        <td> <?= $email      ?></td>
        <td> <?= $address    ?></td>
        <td> <?= $city       ?></td>
        <td> <?= $country    ?></td>
        <td> <?= $phone      ?></td>
        <td align="center"> <?= $pic_tag ?></td>
        <td align="center">  
        	<a href="edit_member.php?id=<?= $id ?>">   <img src="edit.png" width="32">   </a> 
        </td>
        <td align="center">  
        	<a href="delete_member.php?id=<?= $id ?>"  onClick="return confirm('Trash that m@th@f#k@?')"> <img src="delete.png" width="32"> </a> 
        </td>
    </tr>
    
<?php		
	}
?>

</tbody>

</table>
  </body>
</html>
