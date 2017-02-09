<%@include file="/WEB-INF/views/includes/header.jsp"%>
<%@include file="/WEB-INF/views/includes/navi.jsp"%>

<div class="col-lg-12">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3>Employee</h3>
		</div>
		<div class="panel-body">
			<table class="table table-condensed"
				style="border-collapse: collapse;">

					<thead>
						<tr>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Email </th>
							<th>Telephone</th>
							<th>Address</th>
							<th>Status</th>
						</tr>
					</thead>
					<tbody>
					<c:if test="${empty employeeList}">
							<tr>
								<td>There is no employee</td>
							</tr>
					</c:if>
					<c:if test="${!empty employeeList}">
						<c:forEach items="${employeeList}" var="emp">
							<tr>
								<td>${emp.firstName }</td>
								<td>${emp.lastName }</td>
								<td>${emp.lastName }</td>
								<td>${emp.lastName }</td>
								<td>${emp.lastName }</td>
								<td>${emp.age }</td>
							</tr>
						</c:forEach>
					</c:if>
					</tbody>
				</table>
		</div>
	</div>
	</div>
<%@include file="/WEB-INF/views/includes/footer.jsp"%>
