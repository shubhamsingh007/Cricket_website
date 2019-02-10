<?php

    require('config/config.php');
    // file required for connection
    require('config/db.php');

    //create query 
    $query = 'select * from batsman';

    //get result
    $result = mysqli_query($conn,$query);

    //fetch data
    $posts = mysqli_fetch_all($result, MYSQLI_ASSOC);
   // var_dump($posts); to show database table full input details

    //free result
    mysqli_free_result($result);

    //close connection
    mysqli_close($conn);
?>

<?php include('inc/header.php'); ?>
    <div class="container">
    <h1>BATSMAN</h1>
    <?php foreach($posts as $post) : ?>
        <div class="card text-white bg-success mb-3" style="max-width: 20rem;">
            <div class="card-header"><strong><?php echo $post['pname']; ?></strong></div>
            <div class="card-body">
            <h4 class="card-title">Matches : <?php echo $post['matches']?></h4>
            <h4 class="card-title">Runs : <?php echo $post['runs']?></h4>
            <h4 class="card-title">Hundreds : <?php echo $post['hundreds']?></h4>
            <h4 class="card-title">Fifty : <?php echo $post['fifty']?></h4>
            <a class="btn btn-secondary" href="<?php echo ROOT_URL; ?>player.php?pn=<?php echo $post['pn']; ?>">Read more</a>
            </div>
        </div>
    <?php endforeach; ?>  
    </div>      
    <?php include('inc/footer.php'); ?>

<!--

<div class="card text-white bg-success mb-3" style="max-width: 20rem;">
  <div class="card-header">Header</div>
  <div class="card-body">
    <h4 class="card-title">Success card title</h4>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div>
</div>

<button type="button" class="btn btn-outline-success">Success</button>
-->
