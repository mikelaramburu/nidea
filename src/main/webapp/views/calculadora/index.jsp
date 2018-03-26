<%@page import="com.ipartek.formacion.nidea.controller.CalculadoraController"%>
<jsp:include page="/templates/head.jsp"></jsp:include>
<jsp:include page="/templates/navbar.jsp"></jsp:include>
<jsp:include page="/templates/bootstrapTemplate.jsp"></jsp:include>

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

<h2>FORMULARIO CALCULAR</h2>

<form method="post" action="calculadora">
	<div class="form-group">
		<label for="num1">Numero1</label>
		<input type="text" class="form-control" name="num1">
	</div>
	<div class="form-group">
		<label for="num2">Numero2</label>
		<input type="text" class="form-control" name="num2">		
	</div>

	
    <select class="operacion" name="opereacion" id="select_opr">
        <option value="<%=CalculadoraController.OP_SUMAR%>">Sumar</option>
        <option value="<%=CalculadoraController.OP_RESTAR %>">Restar</option>
        <option value="<%=CalculadoraController.OP_MULTIPLICAR %>">Multiplicar</option>
        <option value="<%=CalculadoraController.OP_DIVIDIR%>">Dividir</option>
    </select>
  <input type="submit" class="btn btn-block btn-outline-primary" value="calcular">
</form>
	






 
<jsp:include page="/templates/footer.jsp"></jsp:include>