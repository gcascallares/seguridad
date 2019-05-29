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
				           <c:if test="${sessionScope.rol.equals('admin')}">
							<form:form class="text-center" method="POST" action="auditoriaporusuario" modelAttribute="usuario">							
							    <div class="">
								    <form:select required="true" path="id" id="id" name="id" Class="">
								 		<option value="" selected> Seleccione Usuario..
								 		<c:forEach items= "${listaUsuarios}" var="usuario">
								 			<option value="${usuario.id}">${usuario.nick}	
								 		</c:forEach>
							  		</form:select>
		 							</div>						    				    
							    <button type="submit" id="btn-modificar" value="modificar" class="btn btn-primary">Consultar</button>
							</form:form>
							</c:if>
							<div class="vertical-menu">
								<c:forEach items="${listaAuditorias}" var="usuarioauditoria">
									<label>"${usuarioauditoria.descripcion}"</label><br>
								</c:forEach>
							</div>
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


