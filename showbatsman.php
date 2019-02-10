<?php include('inc/header.php'); ?>


<div class="progress">
  <div class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
</div>


		<div class="container">
			<br />
			<br />
			<br />
			<h2 align="center">Search Batsman Details</h2><br />
			<div class="form-group">
				<div class="input-group">
				<h4 style="color:rgb(173, 29, 173)"><strong>Search</strong></h4>
					<input type="text" name="search_text" id="search_text" placeholder="Search by Batsman name" class="form-control" />
				</div>
			</div>
			<br />
			<div id="result"></div>
		</div>
		<div style="clear:both"></div>
		<br />
		
		<br />
		<br />
		<br />
	</body>
</html>


<script>
$(document).ready(function(){
	load_data();
	function load_data(query)
	{
		$.ajax({
			url:"fetchbatsman.php",
			method:"post",
			data:{query:query},
			success:function(data)
			{
				$('#result').html(data);
			}
		});
	}
	
	$('#search_text').keyup(function(){
		var search = $(this).val();
		if(search != '')
		{
			load_data(search);
		}
		else
		{
			load_data();			
		}
	});
});
</script>




