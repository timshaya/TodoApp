<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>

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
					<form:errors path="desc" cssClass="text-warning"/>
				</fieldset>					
				<fieldset class="form-group frm_group_1">	
					<form:label path="targetDate">Target Date:</form:label>
					<form:input path="targetDate" class="form-control" required="required" type="text" autocomplete="off" />		
					<form:errors path="targetDate" cssClass="text-warning"/>	
				</fieldset>
				<button type="submit" class="btn btn-success">Add</button>
			</form:form>		
		
		</div>			
		<div class="col-sm-4"></div>
		<div class="col-sm-4"></div>		
	</div>	
</div>

<%@ include file="common/footer.jspf" %>