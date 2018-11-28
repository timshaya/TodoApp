<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>

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

<%@ include file="common/footer.jspf" %>
