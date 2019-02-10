<?php
$connect = mysqli_connect("localhost", "root", "", "cricket");
$output = '';
if(isset($_POST["query"]))
{
	$search = mysqli_real_escape_string($connect, $_POST["query"]);
	$query = "
	SELECT * FROM user 
	WHERE name LIKE '%".$search."%'
	OR email LIKE '%".$search."%' 
	OR password LIKE '%".$search."%' 
	OR age LIKE '%".$search."%' 
    OR MOBILE LIKE '%".$search."%'
    OR TEAM LIKE '%".$search."%'
	";
}
else
{
	$query = "
	SELECT * FROM user ORDER BY uid";
}
$result = mysqli_query($connect, $query);
if(mysqli_num_rows($result) > 0)
{
	$output .= '<div class="table-responsive">
					<table class="table table bordered">
						<tr>
							<th>NAME</th>
							<th>EMAIL</th>
							<th>PASSWORD</th>
							<th>AGE</th>
                            <th>MOBILE</th>
                            <th>TEAM</th>
						</tr>';
	while($row = mysqli_fetch_array($result))
	{
		$output .= '
			<tr>
				<td>'.$row["name"].'</td>
				<td>'.$row["email"].'</td>
				<td>'.$row["password"].'</td>
				<td>'.$row["age"].'</td>
                <td>'.$row["MOBILE"].'</td>
                <td>'.$row["TEAM"].'</td>
			</tr>
		';
	}
	echo $output;
}
else
{
	echo 'Data Not Found';
}
?>