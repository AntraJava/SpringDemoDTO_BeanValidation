<%@include file="/WEB-INF/views/includes/header.jsp"%>

    <body style="text-align: center;">
   <div id="fullscreen_bg" class="fullscreen_bg"/>

   
   <div class="container">
    <form action="${loginUrl}" method="post" class="form-signin">
    	<h1 class="form-signin-heading text-muted">Sign In</h1>
   	  			<c:if test="${param.error != null}">
                                <div class="alert alert-danger">
                                    <p>Invalid username and password.</p>
                                </div>
        		</c:if>
        		  <c:if test="${param.logout != null}">
                                <div class="alert alert-success">
                                    <p>You have been logged out successfully.</p>
                                </div>
                  </c:if>
    	<input type="text" class="form-control" id="username" name="username" placeholder="User Name" required="" autofocus="">
		<input type="password" id="password" name="password" class="form-control" placeholder="Password" required="">
		<input type="hidden" name="${_csrf.parameterName}"   value="${_csrf.token}" />
		<button class="btn btn-lg btn-primary btn-block" type="submit">
			Sign In
		</button>

	</form>
	
	</div>
    </body>
<%@include file="/WEB-INF/views/includes/footer.jsp"%>
