<%@include file="/WEB-INF/views/includes/header.jsp"%>
<%@include file="/WEB-INF/views/includes/navi.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="col-lg-12">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3>Manage Department</h3>
		</div>
		<div class="panel-body">
		  <c:if test="${success != null}">
                 <div class="alert alert-success">
                     <p>${success}</p>
                 </div>
           </c:if>
		  <c:if test="${fail != null}">
                 <div class="alert alert-danger">
                     <p>${fail}</p>
                 </div>
           </c:if> 
            
            
			<form:form action="addDept" method="POST" commandName='department'>
			 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			 <font color="red"><form:errors path="*"></form:errors></font><br/>
			 
			<div class="col-lg-3">
				<label for="name">Name:</label>
			    <form:input type="text" class="form-control" path="name"  placeholder="Name" required="required"/>
			    
			    <font color="red"><form:errors path="name"></form:errors></font><br/>
			    
			</div>
			<div class="col-lg-4">
				<label for="email">Email address:</label>
			    <form:input type="email" class="form-control" path="email" name="email" placeholder="Enter email"/>
			    <small class="text-muted">We'll never share your email with anyone else. You wish.</small><br/>
			    <font color="red"><form:errors path="email"></form:errors></font><br/>
			</div>
			<div class="col-lg-4">
				<label for="contact">Contact:</label>
			    <input type="text" class="form-control" id="contact" name="contact" placeholder="Contact"/>
			</div>
			<div class="col-lg-12">
				<label for="desc">Description:</label>
			    <textarea class="form-control" id="desc" name="desc" placeholder="Description"></textarea>
			</div>
			<div class="col-lg-12"  style="margin-top: 20px">
				<button type="submit" class="btn btn-primary">Add</button>
				<button type="reset" class="btn">Reset</button>
			</div>
			</form:form>
		</div>

	</div>

</div>

<%@include file="/WEB-INF/views/includes/footer.jsp"%>
