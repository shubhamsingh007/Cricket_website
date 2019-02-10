

<?php include('inc/header.php'); ?>
<div class="progress">
  <div class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
</div>

<h3>
  Add New PLayers<br>
  <small class="text-muted">Add new Batsman in Table</small>
</h3>

<div class="jumbotron">
  
<form method="POST" action="addbatsman.php" target="_self">
  <fieldset>
    <h2>ADD BATSMAN</h2>
    <div class="form-group">
        <label class="col-form-label col-form-label-lg col-lg-4" for="inputLarge">PLayer Name</label>
        <input class="form-control form-control-lg col-lg-4" type="text" name="pname" placeholder="Enter player name" id="inputLarge">
    </div>
    <div class="form-group">
        <label class="col-form-label col-form-label-lg col-lg-4" for="inputLarge">Matches</label>
        <input class="form-control form-control-lg col-lg-4" type="number" name="matches" placeholder="No. of matches played" id="inputLarge">
    </div>
    <div class="form-group">
        <label class="col-form-label col-form-label-lg col-lg-4" for="inputLarge">Runs</label>
        <input class="form-control form-control-lg col-lg-4" type="number" name="runs" placeholder="Runs scored" id="inputLarge">
    </div>
    <div class="form-group">
        <label class="col-form-label col-form-label-lg col-lg-4" for="inputLarge">Average</label>
        <input class="form-control form-control-lg col-lg-4" type="number" name="avg" placeholder="batting avg" id="inputLarge">
    </div>
    <div class="form-group">
        <label class="col-form-label col-form-label-lg col-lg-4" for="inputLarge">Fifty</label>
        <input class="form-control form-control-lg col-lg-4" type="number" name="fifty" placeholder="fifty scored" id="inputLarge">
    </div>
    <div class="form-group">
        <label class="col-form-label col-form-label-lg col-lg-4" for="inputLarge">Hundred</label>
        <input class="form-control form-control-lg col-lg-4" type="number" name="hundred" placeholder="hundred scored" id="inputLarge">
    </div>
    <div class="form-group">
        <label class="col-form-label col-form-label-lg col-lg-4" for="inputLarge">Best</label>
        <input class="form-control form-control-lg col-lg-4" type="number" name="best" placeholder="best performance" id="inputLarge">
    </div>
    <div class="form-group">
        <label class="col-form-label col-form-label-lg col-lg-4" for="inputLarge">Position</label>
        <input class="form-control form-control-lg col-lg-4" type="text" name="position" placeholder="opener/middle order/wicket-keeper" id="inputLarge">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </fieldset>
</form>  

<aside id="sidebar">
<div class="card col-lg-6">
  <h3 class="card-header">Card header</h3>
  <img style="height: 300px; width: 100%; display: block;" src="img/virat1.png" alt="Card image">
  <div class="card-body">
    <p class="card-text"> up the bulk of the card's content.</p>
  </div>
</div>
</aside>

<aside id="sidebar1">
<div class="card col-lg-6">
  <h3 class="card-header">Card header</h3>
  <img style="height: 300px; width: 100%; display: block;" src="img/cricket1.png" alt="Card image">
  <div class="card-body">
    <p class="card-text"> up the bulk of the card's content.</p>
  </div>
</div>
</aside>


</div>
  
  














<?php include('inc/footer.php'); ?>






































<p class="text-info">Maecenas sed diam eget risus varius blandit sit amet non magna.</p>