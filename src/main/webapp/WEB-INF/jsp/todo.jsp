<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>To Do</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">  
  <link href="css/add-todo.css" rel="stylesheet">  
</head>
<body>
<div class="container">
	<div class="row mt-4 mb-4">
		<div class="col-sm-8">TODOTHINGY - Add an item to your list</div>
		<div class="col-sm-4 text-right"><a href="/list-todos">${name}'s List</a>.</div>					
	</div>
	<div class="row mt-4 mb-4">
		<div class="col-sm-4">
		
			<form method="POST">
				<fieldset class="form-group frm_group_1">
					<label>Description:</label>
					<input class="form-control" required="required" type="text" name="description" /><br/>				
				</fieldset>
				<button type="submit" class="btn btn-success">Add</button>
			</form>		
		
		</div>			
		<div class="col-sm-4"></div>
		<div class="col-sm-4"></div>		
	</div>	
</div>

<script src="/webjars/jquery/3.3.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</body>
</html>
