
<?php include('inc/header.php'); ?>


<div class="progress">
  <div class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
</div>

  <div class="container">
 <div class="col-lg-12">
  <br><br>
  <h1 class="text-warning text-center" > Display Table Data </h1>
  <br>
  <table  id="tabledata" class=" table table-striped table-hover table-bordered">
   
   <tr class="table-warning text-white text-center">
    
    <th> PID </th>
    <th> name </th>
    <th> matches </th>
    <th> runs </th>
    <th> average </th>
    <th> fifty </th>
    <th> hunderd </th>
    <th> best </th>
    <th> position </th>
    <th> delete </th>
    <th> update </th>

    </tr >

  <?php

    include 'conn.php'; 
   $q = "select * from batsmen ";

    $query = mysqli_query($con,$q);

    while($res = mysqli_fetch_array($query)){
 ?>
   <tr class="text-center">
    <td> <?php echo $res['pid'];  ?> </td>
    <td> <?php echo $res['pname'];  ?> </td>
    <td> <?php echo $res['matches'];  ?> </td>
    <td> <?php echo $res['runs'];  ?> </td>
    <td> <?php echo $res['avg'];  ?> </td>
    <td> <?php echo $res['fifty'];  ?> </td>
    <td> <?php echo $res['hundred'];  ?> </td>
    <td> <?php echo $res['best'];  ?> </td>
    <td> <?php echo $res['position'];  ?> </td>
    <td> <button class="btn-danger btn"> <a href="batsmandelete.php?pid=<?php echo $res['pid']; ?>" class="text-white"> Delete </a>  </button> </td>
    <td> <button class="btn-primary btn"> <a href="batsmanupdate.php?pid=<?php echo $res['pid']; ?>" class="text-white"> Update </a> </button> </td>

    </tr>

   <?php 
   }
   ?>
   
  </table>  

  </div>
 </div>

  <script type="text/javascript">
  
  $(document).ready(function(){
   $('#tabledata').DataTable();
  }) 
  
 </script>

</body>
</html>