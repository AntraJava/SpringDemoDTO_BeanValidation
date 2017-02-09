<div class="navbar-wrapper">
	<div class="container-fluid">
		<nav class="navbar navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">Antra HR</a>
				</div>
					<ul class="nav navbar-nav">
						<li ><a href="<c:url value="/main"/>" class="">Home</a></li>
						<li class="dropdown"><a href="<c:url value="/viewDept"/>" class="dropdown-toggle "
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">Departments <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="<c:url value="/viewDept"/>">View Departments</a></li>
								<li><a href="<c:url value="/manageDept"/>">Manage Departments</a></li>
							</ul></li>
						<li class=" dropdown"><a href="#" class="dropdown-toggle "
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">Employee <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="<c:url value="/viewEmp"/>">View Employee</a></li>
								<li><a href="<c:url value="/manageEmp"/>">Manage Employee</a></li>
							</ul></li>
					</ul>
					<ul class="nav navbar-nav pull-right">
						<li class="active dropdown"><a href="#"
							class="dropdown-toggle active" data-toggle="dropdown"
							role="button" aria-haspopup="true" aria-expanded="false">Signed
								in as <sec:authentication property="principal.username"/> <span class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#">Change Password</a></li>
								<li><a href="#">My Profile</a></li>
							</ul></li>
						<li class=""><a href="<c:url value="/logout"/>">Logout</a></li>
					</ul>
			</div>
		</nav>
	</div>
</div>

