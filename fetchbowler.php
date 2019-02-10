<?php
$connect = mysqli_connect("localhost", "root", "", "cricket");
$output = '';
if(isset($_POST["query"]))
{
	$search = mysqli_real_escape_string($connect, $_POST["query"]);
	$query = "
	SELECT * FROM bowlers 
	WHERE pname LIKE '%".$search."%'
	OR matches LIKE '%".$search."%' 
	OR wickets LIKE '%".$search."%' 
	OR avg LIKE '%".$search."%' 
    OR 5wickets LIKE '%".$search."%'
    OR best LIKE '%".$search."%'
    OR position LIKE '%".$search."%'
	";
}
else
{
	$query = "
	SELECT * FROM bowlers ORDER BY pid";
}
$result = mysqli_query($connect, $query);
if(mysqli_num_rows($result) > 0)
{
	$output .= '<div class="table-responsive">
					<table class="table table bordered">
						<tr>
							<th>NAME</th>
							<th>MATCHES</th>
							<th>WICKETS</th>
							<th>AVERAGE</th>
                            <th>5WICKETS</th>
                            <th>BEST</th>
                            <th>POSITION</th>
						</tr>';
	while($row = mysqli_fetch_array($result))
	{
		$output .= '
			<tr>
				<td>'.$row["pname"].'</td>
				<td>'.$row["matches"].'</td>
				<td>'.$row["wickets"].'</td>
				<td>'.$row["avg"].'</td>
                <td>'.$row["5wickets"].'</td>
                <td>'.$row["best"].'</td>
                <td>'.$row["position"].'</td>
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