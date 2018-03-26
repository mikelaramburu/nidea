
<%@page import="com.ipartek.formacion.nidea.controller.CalculadoraController"%>
<jsp:include page="/templates/head.jsp"></jsp:include>
<jsp:include page="/templates/navbar.jsp"></jsp:include>
<jsp:include page="/templates/bootstrapTemplate.jsp"></jsp:include>
<jsp:include page="/templates/alert.jsp"></jsp:include>

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
  <input type="submit" class="btn btn-block btn-outline-primary" value="Calcular">
</form>
	






 
<jsp:include page="/templates/footer.jsp"></jsp:include>