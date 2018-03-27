<jsp:include page="templates/head.jsp"></jsp:include>
<jsp:include page="templates/navbar.jsp"></jsp:include>
<jsp:include page="templates/alert.jsp"></jsp:include>

<div id="login">

  <form class="form-signin" action="login" method="post">     
	 <label for="usuario">Nombre Usuario</label>
      <div class="form-label-group">
        <input type="text" class="form-control"
               name="usuario" 
               placeholder="Nombre Usuario" 
               required autofocus>
               
     
      </div>

      <div class="form-label-group">
       <label for="password">Contraseña</label>
        <input type="password" 
               name="password" 
               class="form-control" 
               placeholder="Contraseña" required>
               
       
      </div>
     
      <button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
      
    </form>

</div>
<jsp:include page="templates/footer.jsp"></jsp:include>