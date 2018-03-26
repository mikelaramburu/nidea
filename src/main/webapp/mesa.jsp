<%@page import="com.ipartek.formacion.nidea.pojo.Mesa"%>
<jsp:include page="templates/head.jsp"></jsp:include>
<jsp:include page="templates/navbar.jsp"></jsp:include>
<jsp:include page="templates/bootstrapTemplate.jsp"></jsp:include>
<jsp:include page="templates/alert.jsp"></jsp:include>


<%
	//recoger el atributo del controlador, si es que existe
	Mesa mesa = (Mesa)request.getAttribute("mesa");
	String[] materiales = (String[])request.getAttribute("materiales");
	int[] materialesCodigo = (int[])request.getAttribute("materialesCodigo");
	

%>
<%
	String msg=(String)request.getAttribute("msg");
	if(msg !=null){
	
%>

	<div class="alert alert-danger alert-dismissible fade show" role="alert">
			<%=msg%>
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
		</div>

<%
	}//end IF
%>

<p>Precio: <%=mesa.getPrecio()%> &euro;</p>

<form action="generar-mesa" method="post">
	
	<label for ="patas">Numero de patas:</label>	
		<input type="number" name ="patas" value="<%=mesa.getNumeroPatas()%>" required>
	<hr>
	
	<label for ="dimension">Dimensión:</label>
		<input type="number" name ="dimension" value=<%=mesa.getDimension() %> required>
	<hr>
	<p>Color: 
		   <input type="color" value="<%=mesa.getColor()%>" disabled>
		</p>
	
	<p>¿ Quieres un color customizado ? 
		 <input type="checkbox" name="custom" onclick="showColor()" id="custom" <%=(mesa.isCustom())?"checked":""%>>
		 <input type="color" name="color" id="html5colorpicker" onchange="clickColor(0, -1, -1, 5)" value="#ff0000" style="width:5%
		 height: 5%;">
	</p>
	<hr>
	 	
	<label for ="material">De que material quiere que sea su mesa?</label>
	<select name="material">
	<% for ( int i=0; i < materiales.length; i++ ) { %>
		<option value="<%=materialesCodigo[i]%>" 
					        <%=(mesa.getMaterial().getId()==materialesCodigo[i])?"selected":""%>>
						<%=materiales[i]%>
					</option>
		<% } %>
	</select>
		
	
	
	<hr>
	<input type="submit" value="Calcular precio">
	
</form>
 
 <script>
 	
 	showColor();
 	
 	
 	function showColor(){
 		var custom = document.getElementById('custom');
 	 	var color = document.getElementById('html5colorpicker');
 		
 		if (custom.checked){
 	 		html5colorpicker.style.display = 'block';
 	 	}else{
 	 		html5colorpicker.style.display= 'none';
 	 	}
 	}
 	
 	
 
 </script>

 
<jsp:include page="templates/footer.jsp"></jsp:include>