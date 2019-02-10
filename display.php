
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
    
    <th> UId </th>
    <th> name </th>
    <th> email </th>
    <th> Password </th>
    <th> age </th>
    <th> mobile </th>
    <th> team </th>
    <th> Delete </th>
    <th> Update </th>

    </tr >

  <?php

    include 'conn.php'; 
   $q = "select * from user ";

    $query = mysqli_query($con,$q);

    while($res = mysqli_fetch_array($query)){
 ?>
   <tr class="text-center">
    <td> <?php echo $res['uid'];  ?> </td>
    <td> <?php echo $res['name'];  ?> </td>
    <td> <?php echo $res['email'];  ?> </td>
    <td> <?php echo $res['password'];  ?> </td>
    <td> <?php echo $res['age'];  ?> </td>
    <td> <?php echo $res['MOBILE'];  ?> </td>
    <td> <?php echo $res['TEAM'];  ?> </td>
    <td> <button class="btn-danger btn"> <a href="delete.php?uid=<?php echo $res['uid']; ?>" class="text-white"> Delete </a>  </button> </td>
    <td> <button class="btn-primary btn"> <a href="update.php?uid=<?php echo $res['uid']; ?>" class="text-white"> Update </a> </button> </td>

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