<?php
$server = "localhost";
$user = "root";
$dbname = "cricket";
$con = mysqli_connect($server,$user);
mysqli_select_db($con,$dbname);

$q0 ="select * from user_table";
$q1= "select * from ubatsman";
$q2= "select * from ubowlers";
$q3= "select * from uallrounders";

$result0=mysqli_query($con,$q0);
$num0= mysqli_num_rows($result0);

$result1=mysqli_query($con,$q1);
$num1= mysqli_num_rows($result1);

$result2=mysqli_query($con,$q2);
$num2= mysqli_num_rows($result2);

$result3=mysqli_query($con,$q3);
$num3= mysqli_num_rows($result3);

mysqli_close($con);
?>

<html>
<head>
<title>Hello Ojaswin</title>
<link rel = "stylesheet" href="./css/players.css" />

<style>

    #ojas{
        float:left;
        margin-left:290px;
    }

</style>
</head>

<body>

    <header>
        <div class="container">
            <div id="branding">
                <h1><span class="highlight"> Cricket</span> @ 11 team</h1>
            </div>
        <div class="player">   
            <h3><br>Hello Ojaswin,here is your team details</h3>
            
        </div>    
            
        </div>
    </header>






<table class="col" id="ojas">    
<tr class ="header">
<th class="heading">Team name</th>
<th class="heading">User name</th>
<th class="heading">batsman</th>
<th class="heading">Bowlers</th>
<th class="heading">All Rounders</th>
<th class="heading">Captain</th>
</tr>
<?php 
for($i=1;$i<=$num0;$i++){
    $row0=mysqli_fetch_array($result0);

?>
<tr>
<td class="data grey"><strong><?php echo $row0['team_name']; ?></strong></td>
<td class="data"><strong><?php echo $row0['User_name']; ?></strong></td>
<td class="data"><strong><?php echo $row0['batsman']; ?></strong></td>
<td class="data"><strong><?php echo $row0['bowlers']; ?></strong></td>
<td class="data"><strong><?php echo $row0['allrounders']; ?></strong></td>
<td class="data"><strong><?php echo $row0['captain']; ?></strong></td>
</tr>   

<?php
}
?>


  


<table style="float: left"; class="col">    
<tr class ="header">
<th class="heading">Player name</th>
<th class="heading">Position</th>
</tr>
<?php 
for($i=1;$i<=$num1;$i++){
    $row1=mysqli_fetch_array($result1);

?>
<tr>
<td class="data grey"><strong><?php echo $row1['pname']; ?></strong></td>
<td class="data"><strong><?php echo $row1['position']; ?></strong></td>
</tr>   

<?php
}
?>
</table>

<table style="float: left;" class="col">    
<tr class ="header">
<th class="heading">Player name</th>
<th class="heading">Position</th>
</tr>
<?php 
for($j=1;$j<=$num2;$j++){
    $row2=mysqli_fetch_array($result2);

?>
<tr>
<td class="data grey"><strong><?php echo $row2['pname']; ?></strong></td>
<td class="data"><strong><?php echo $row2['position']; ?></strong></td>
</tr>   

<?php
}
?>
</table>

<table style="float: left;" class="col">    
<tr class ="header">
<th class="heading">Player name</th>
<th class="heading">Position</th>
</tr>
<?php 
for($k=1;$k<=$num3;$k++){
    $row3=mysqli_fetch_array($result3);

?>
<tr>
<td class="data grey"><strong><?php echo $row3['pname']; ?></strong></td>
<td class="data"><strong><?php echo $row3['position']; ?></strong></td>
</tr>   

<?php
}
?>
</table>



</body>
</html>