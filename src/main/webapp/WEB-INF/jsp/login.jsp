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
		<div class="col-sm-4">col 1</div>			
		<div class="col-sm-4">Hey there!
			
			<div class="text-danger">${invalidMessage}</div>
			
			<form method="POST">
				Name: <input type="text" name="name" /><br/>
				Password: <input type="password" name="password"/>
				<input type="submit" />
			</form>
			
		</div>
		<div class="col-sm-4">col 3</div>		
	</div>
</div>

<script src="/webjars/jquery/3.3.1/jquery.min.js"></script>

</body>
</html>
