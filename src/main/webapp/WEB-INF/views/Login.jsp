<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<jsp:include page="body.jsp"></jsp:include>


<%-- <html>
	<body>
		<h1 id="banner">Login to Security Demo</h1>  
		
		<form name="f" action="<c:url value='j_spring_security_check'/>"
					method="POST">
			<table>
				<tr>
					<td>Username:</td>
					<td><input type='text' name='j_username' /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type='password' name='j_password'></td>
				</tr>
				<tr>
					<td colspan="2">&nbsp;</td>
				</tr>
				<tr>
					<td colspan='2'><input name="submit" type="submit">&nbsp;<input name="reset" type="reset"></td>
				</tr>
			</table>
		</form>
	</body>
</html> --%>

<html>


<head>

<style type="text/css">
body {
	background: #eee !important;	
}

.wrapper {	
	margin-top: 80px;
  margin-bottom: 80px;
}

.form-signin {
  max-width: 380px;
  padding: 15px 35px 45px;
  margin: 0 auto;
  background-color: #fff;
  border: 1px solid rgba(0,0,0,0.1);  

  .form-signin-heading,
	.checkbox {
	  margin-bottom: 30px;
	}

	.checkbox {
	  font-weight: normal;
	}

	.form-control {
	  position: relative;
	  font-size: 16px;
	  height: auto;
	  padding: 10px;
		@include box-sizing(border-box);

		&:focus {
		  z-index: 2;
		}
	}

	input[type="text"] {
	  margin-bottom: -1px;
	  border-bottom-left-radius: 0;
	  border-bottom-right-radius: 0;
	}

	input[type="password"] {
	  margin-bottom: 20px;
	  border-top-left-radius: 0;
	  border-top-right-radius: 0;
	}
}

</style>
</head>
	<body>
 <div class="wrapper">
    <form class="form-signin" name="f" action="<c:url value='j_spring_security_check'/>"
					method="POST">       
      <h2 class="form-signin-heading">Please login</h2>
      <input type="text" class="form-control" name='j_username' placeholder="User Name" required="required" autofocus="" /></br>
      <input type="password" class="form-control" name='j_password' placeholder="Password" required="required"/>      
      <label class="checkbox">
        <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
      </label>
      <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>   
    </form>
  </div>
	</body>
</html>