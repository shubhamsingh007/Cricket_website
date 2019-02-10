<?php

    require('config/config.php');
    // file required for connection
    require('config/db.php');

    // check for submit
    if(isset($_POST['submit'])){
        
        $update_pn = mysqli_real_escape_string($conn,$_POST['update_pn']);
        $pname = mysqli_real_escape_string($conn,$_POST['pname']);
        $matches = mysqli_real_escape_string($conn,$_POST['matches']);
        $runs = mysqli_real_escape_string($conn,$_POST['runs']);
        $hundreds = mysqli_real_escape_string($conn,$_POST['hundreds']);
        $fifty = mysqli_real_escape_string($conn,$_POST['fifty']);

        $query = "update batsman set
                    pname='$pname',
                    matches='$matches',
                    runs = '$runs',
                    hundreds = '$hundreds',
                    fifty = '$fifty'
                    where pn = {$update_pn}";

        if(mysqli_query($conn, $query)){
            header('Location:'.ROOT_URL.'');
        }
        else{
            echo 'ERROR: '. mysqli_error($conn);
        }
    }

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
    <h1>ADD BATSMAN</h1>
    <form method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
    <div class="form-group">
    <label class="col-form-label col-form-label-lg" for="inputLarge">Player Name</label>
    <input class="form-control form-control-lg" type="text" name="pname" value="<?php echo $post['pname']; ?>" placeholder="player name..." id="inputLarge">
    </div>

    <div class="form-group">
    <label class="col-form-label col-form-label-lg" for="inputLarge">Matches</label>
    <input class="form-control form-control-lg" type="number" name="matches" value="<?php echo $post['matches']; ?>" placeholder="matches played..." id="inputLarge">
    </div>

    <div class="form-group">
    <label class="col-form-label col-form-label-lg" for="inputLarge">Runs</label>
    <input class="form-control form-control-lg" type="number" name="runs" value="<?php echo $post['runs']; ?>" placeholder="Runs..." id="inputLarge">
    </div>

    <div class="form-group">
    <label class="col-form-label col-form-label-lg" for="inputLarge">Hundreds</label>
    <input class="form-control form-control-lg" type="number" name="hundreds" value="<?php echo $post['hundreds']; ?>" placeholder="Hundred scores..." id="inputLarge">
    </div>

    <div class="form-group">
    <label class="col-form-label col-form-label-lg" for="inputLarge">Fifty</label>
    <input class="form-control form-control-lg" type="number" name="fifty" value="<?php echo $post['fifty']; ?>" placeholder="Fifty scores..." id="inputLarge">
    </div>
    
    <input type="hidden" name="update_pn" value="<?php echo $post['pn']; ?>">
    <input type="submit" name="submit" value="submit" class="btn btn-danger"> 
    </form>
    </div>      
    <?php include('inc/footer.php'); ?>


<?php
// <div class="form-group">
// <label class="col-form-label col-form-label-lg" for="inputLarge">Large input</label>
// <input class="form-control form-control-lg" type="text" placeholder=".form-control-lg" id="inputLarge">
// </div>

// <div class="form-group">
/*<label class="col-form-label" for="inputDefault">Default input</label>
<input type="text" class="form-control" placeholder="Default input" id="inputDefault">
</div>
*/
?>