<?php

    require('config/config.php');
    // file required for connection
    require('config/db.php');


    // check for submit
    if(isset($_POST['delete'])){
        
        $delete_pn = mysqli_real_escape_string($conn,$_POST['delete_pn']);
      
        $query = "delete from batsman where pn = {$delete_pn}";

        if(mysqli_query($conn, $query)){
            header('Location:'.ROOT_URL.'');
        }
        else{
            echo 'ERROR: '. mysqli_error($conn);
        }
    }

    //get id
    $pn = mysqli_real_escape_string($conn, $_GET['pn']);

    //create query 
    $query = 'select * from batsman where pn = '.$pn;

    //get result
    $result = mysqli_query($conn,$query);
  //  echo($result);

    

    //fetch data
    $post = mysqli_fetch_assoc($result);
   // var_dump($posts); to show database table full input details

    //free result
    mysqli_free_result($result);

    //close connection
    mysqli_close($conn);
?>

    <?php include('inc/header.php'); ?>
    <div class="container">
    <h1><?php echo $post['pname']; ?></h1>
  
        <div class="card text-white bg-success mb-3" style="max-width: 20rem;">
            <div class="card-header"><strong><?php echo $post['pname']; ?></strong></div>
            <div class="card-body">
            <h4 class="card-title">Matches : <?php echo $post['matches']?></h4>
            <h4 class="card-title">Runs : <?php echo $post['runs']?></h4>
            <h4 class="card-title">Hundreds : <?php echo $post['hundreds']?></h4>
            <h4 class="card-title">Fifty : <?php echo $post['fifty']?></h4>
           
            </div>

        </div>
       
        <a class="btn btn-secondary" href="<?php echo ROOT_URL; ?>">Players page</a>
        <a class="btn btn-secondary" href="<?php echo ROOT_URL; ?>editplayer.php?pn=<?php echo $post['pn']; ?>">Edit</a>
        <br>
        <br>
        <form class="pull-right" method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">
            <input type="hidden" name="delete_pn" value="<?php echo $post['pn']; ?>">
            <input type="submit" name="delete" value="delete" class="btn btn-danger">
        </form>
        
    </div>      
    <?php include('inc/footer.php'); ?>
<!--



<button type="button" class="btn btn-outline-success">Success</button>
-->
