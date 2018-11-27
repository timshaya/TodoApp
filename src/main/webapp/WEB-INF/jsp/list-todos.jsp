<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>To Do</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">  
  <link href="css/todo.css" rel="stylesheet">    
</head>
<body>
<div class="container">
	
	<div class="row mt-4 mb-4">
		<div class="col-sm-8">TODOTHINGY</div>	
		<div class="col-sm-4 text-right"><a class="button" href="/add-todo">Add a To Do</a></div>			
	</div>	
	<div class="row border-bottom hdr_todo">
		<div class="col-sm-3"><h5>Description</h5></div>			
		<div class="col-sm-3"><h5>Date</h5></div>
		<div class="col-sm-2"><h5>Is it Done?</h5></div>
		<div class="col-sm-2"><h5>Changes</h5></div>						
		<div class="col-sm-2 text-center hdr_rght_egde"><h5>Remove</h5></div>				
	</div>	
		
	<c:forEach items="${todos}" var="todo">
	<div class="row border-bottom pb-3 pt-3">
		<div class="col-sm-3">${todo.desc}</div>			
		<div class="col-sm-3">${todo.targetDate}</div>
		<div class="col-sm-2">${todo.done}</div>
		<div class="col-sm-2"><a href="/update-todo?id=${todo.id}" class="btn btn-success">UPDATE</a></div>						
		<div class="col-sm-2 text-right"><a href="/delete-todo?id=${todo.id}" class="btn btn-warning">DELETE</a></div>				
	</div>		
	</c:forEach>	

</div>

<script src="/webjars/jquery/3.3.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</body>
</html>
