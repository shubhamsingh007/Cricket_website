<?php

    require('config/config.php');
    // file required for connection
    require('config/db.php');

    // check for submit
    if(isset($_POST['submit'])){
        
        $pname = mysqli_real_escape_string($conn,$_POST['pname']);
        $matches = mysqli_real_escape_string($conn,$_POST['matches']);
        $runs = mysqli_real_escape_string($conn,$_POST['runs']);
        $hundreds = mysqli_real_escape_string($conn,$_POST['hundreds']);
        $fifty = mysqli_real_escape_string($conn,$_POST['fifty']);

        $query = "insert into batsman(pname,matches,runs,hundreds,fifty) values('$pname','$matches','$runs','$hundreds','$fifty')";

        if(mysqli_query($conn, $query)){
            header('Location:'.ROOT_URL.'');
        }
        else{
            echo 'ERROR: '. mysqli_error($conn);
        }
    }
        
?>

<?php include('inc/header.php'); ?>

    <div class="container">
    <h1>ADD BATSMAN</h1>
    <form method="post" action="<?php $_SERVER['PHP_SELF']; ?>">
    <div class="form-group">
    <label class="col-form-label col-form-label-lg" for="inputLarge">Player Name</label>
    <input class="form-control form-control-lg" type="text" name="pname" placeholder="player name..." id="inputLarge">
    </div>

    <div class="form-group">
    <label class="col-form-label col-form-label-lg" for="inputLarge">Matches</label>
    <input class="form-control form-control-lg" type="number" name="matches" placeholder="matches played..." id="inputLarge" >
    </div>

    <div class="form-group">
    <label class="col-form-label col-form-label-lg" for="inputLarge">Runs</label>
    <input class="form-control form-control-lg" type="number" name="runs" placeholder="Runs..." id="inputLarge">
    </div>

    <div class="form-group">
    <label class="col-form-label col-form-label-lg" for="inputLarge">Hundreds</label>
    <input class="form-control form-control-lg" type="number" name="hundreds" placeholder="Hundred scores..." id="inputLarge" >
    </div>

    <div class="form-group">
    <label class="col-form-label col-form-label-lg" for="inputLarge">Fifty</label>
    <input class="form-control form-control-lg" type="number" name="fifty" placeholder="Fifty scores..." id="inputLarge" >
    </div>
    
    
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