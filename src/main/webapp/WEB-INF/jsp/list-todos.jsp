<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>

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
		<div class="col-sm-3"><fmt:formatDate value="${todo.targetDate}"/></div>
		<div class="col-sm-2">${todo.done}</div>
		<div class="col-sm-2"><a href="/update-todo?id=${todo.id}" class="btn btn-success btn_space_1">UPDATE</a></div>						
		<div class="col-sm-2 text-right sm_txt_algn"><a href="/delete-todo?id=${todo.id}" class="btn btn-warning btn_space_1">DELETE</a></div>				
	</div>			
</c:forEach>	

</div>

<%@ include file="common/footer.jspf" %>

