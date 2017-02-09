<%@include file="/WEB-INF/views/includes/header.jsp"%>
<%@include file="/WEB-INF/views/includes/navi.jsp"%>

<div class="col-lg-12">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3>Departments</h3>
		</div>
		<div class="panel-body">
			<table class="table table-condensed"
				style="border-collapse: collapse;">

				<thead>
					<tr>
						<th>Dept. Name</th>
						<th>Description</th>
						<th>Contact Email</th>
						<th>Contact number</th>
						<th>Status</th>
					</tr>
				</thead>

				<tbody>
				<c:forEach items="${deptList}" var="dept">
					<tr data-toggle="collapse" data-target="#dept_${dept.id}"
						class="accordion-toggle">
						<td>${dept.name}</td>
						<td>${dept.name}</td>
						<td>${dept.email}</td>
						<td>${dept.email}</td>
						<td>${dept.email}</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>

	</div>

</div>


<%@include file="/WEB-INF/views/includes/footer.jsp"%>
