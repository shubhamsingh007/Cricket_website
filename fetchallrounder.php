<?php
$connect = mysqli_connect("localhost", "root", "", "cricket");
$output = '';
if(isset($_POST["query"]))
{
	$search = mysqli_real_escape_string($connect, $_POST["query"]);
	$query = "
	SELECT * FROM allrounders 
	WHERE pname LIKE '%".$search."%'
	OR matches LIKE '%".$search."%' 
	OR runs LIKE '%".$search."%' 
	OR bavg LIKE '%".$search."%' 
    OR fifty LIKE '%".$search."%'
    OR hundred LIKE '%".$search."%'
    OR best LIKE '%".$search."%'
    OR wickets LIKE '%".$search."%'
    OR avg LIKE '%".$search."%'
    OR 5wickets LIKE '%".$search."%'
    OR position LIKE '%".$search."%'
	";
}
else
{
	$query = "
	SELECT * FROM allrounders ORDER BY pid";
}
$result = mysqli_query($connect, $query);
if(mysqli_num_rows($result) > 0)
{
	$output .= '<div class="table-responsive">
					<table class="table table bordered">
						<tr>
							<th>NAME</th>
							<th>MATCHES</th>
							<th>RUNS</th>
							<th>BATTING-AVG</th>
                            <th>FIFTY</th>
                            <th>HUNDRED</th>
                            <th>BEST</th>
                            <th>WICKETS</th>
                            <th>AVG</th>
                            <th>5WICKETS</th>
                            <th>POSITION</th>
						</tr>';
	while($row = mysqli_fetch_array($result))
	{
		$output .= '
			<tr>
				<td>'.$row["pname"].'</td>
				<td>'.$row["matches"].'</td>
				<td>'.$row["runs"].'</td>
				<td>'.$row["bavg"].'</td>
                <td>'.$row["fifty"].'</td>
                <td>'.$row["hundred"].'</td>
                <td>'.$row["best"].'</td>
                <td>'.$row["wickets"].'</td>
                <td>'.$row["avg"].'</td>
                <td>'.$row["5wickets"].'</td>
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