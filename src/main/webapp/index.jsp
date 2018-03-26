<jsp:include page="templates/head.jsp"></jsp:include>
<jsp:include page="templates/navbar.jsp"></jsp:include>
<jsp:include page="templates/bootstrapTemplate.jsp"></jsp:include>



	<%	
		//Scriplet <%  ... % >
		//varias sentencias
		
		String nombre ="pepe";
		String hora = "10:15";	
	%>
<h2>Hello <%=nombre%></h2>
<p> <%=hora%></p>

<a href="generar-mesa">¿Quieres comprar una mesa?</a> 
<hr>	
<a href="calculadora">Calculadora</a>

<jsp:include page="templates/footer.jsp"></jsp:include>
