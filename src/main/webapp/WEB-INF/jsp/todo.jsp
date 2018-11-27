<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
			
			<%-- commandName was removed,modelAttribute replaced it
				  https://jira.spring.io/browse/SPR-16037
			 --%>  
			<form:form method="POST" modelAttribute="todo">
				<form:hidden path="id"/>
				<fieldset class="form-group frm_group_1">
					<form:label path="desc">Description:</form:label>
					<form:input path="desc" class="form-control" required="required" type="text" name="description" />		
					
					<form:label path="targetDate">Target Date:</form:label>
					<form:input path="targetDate" class="form-control" required="required" type="text" name="target date" />		
					
						
					<form:errors path="desc" cssClass="text-warning"/>
				</fieldset>
				<button type="submit" class="btn btn-success">Add</button>
			</form:form>		
		
		</div>			
		<div class="col-sm-4"></div>
		<div class="col-sm-4"></div>		
	</div>	
</div>

<script src="/webjars/jquery/3.3.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>

</body>
</html>
