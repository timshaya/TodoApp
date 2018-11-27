<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>login</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">  
</head>
<body>
<div] class="container">
	<div class="row">
		<div class="col-sm-4"></div>			
		<div class="col-sm-4">Login to TODOTHINGY
			
			<div class="text-danger">${invalidMessage}</div>
			
			<form method="POST">
				<fieldset>
					<label>User:  </label>     
					<input type="text" name="name" /><br/>
					<label>Pass:</label>
					<input type="password" name="password"/>
				</fieldset>
				<button type="submit" class="btn btn-success">Submit</button>
			</form>
			
		</div>
		<div class="col-sm-4"></div>		
	</div>
</div>

<script src="/webjars/jquery/3.3.1/jquery.min.js"></script>

</body>
</html>
