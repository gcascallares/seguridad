<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<%@include file="styles/styles.jsp"%> 
	</head>
	<body>
		<div id="wrapper">
			<%@include file="menu.jsp"%>
			<section id="content">
		      <div class="container">
	
		        <div class="row">
		          <div class="span12">
			          <div class="aligncenter"> 
				          <h1>Bienvenido ${nombre}</h1><br>
				          <h1><i class="icon-bug"></i></h1>
			          </div>
		          </div>
		        </div>
		      </div>
		    </section>
			<%@include file="footer.jsp"%>
			<%@include file="scripts/scripts.jsp"%> 
		</div>
	</body>
</html>