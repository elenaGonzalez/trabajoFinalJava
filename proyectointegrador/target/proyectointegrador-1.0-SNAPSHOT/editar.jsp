<%@page import="com.codoacodo.model.Orador"%>
<html>
    <head>
           <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> 	
    </head>

    <body>
        <main>
          
            <div class="container">
                <section>
                    <% 
                        Orador orador = (Orador)request.getAttribute("orador");
                    %>
                    <h1>Editar Orador</h1>
                    <!--  JSP -->
                    <form method="POST"
                            action="<%=request.getContextPath()%>/api/EditarController">
                            <div class="mb-3">
                              <input name="nombre"
                                    value="<%=orador.getNombre()%>"  
                                    type="text" class="form-control" id="nombre" placeholder="Nombre" maxlength="50">
                            </div>
                            <div class="mb-3">
                              <label for="exampleFormControlInput1" class="form-label">Apellido</label>
                              <input name="apellido"
                                    value="<%=orador.getApellido()%>" 
                                    type="text" class="form-control" id="exampleFormControlInput2">
                            </div>
                             <div class="mb-3">
                              <label for="exampleFormControlInput1" class="form-label">Mail</label>
                              <input name="mail"
                                    value="<%=orador.getMail()%>" 
                                    type="text" class="form-control" id="mail">
                            </div>
                            <div class="my-3 mx-3">
                                <label for="exampleFormControlInput1" class="form-label">Tema</label>
                                <input value="<%=orador.getTema()%>" name="tema" type="text" class="form-control" id="tema" placeholder="tema" maxlength="50">
                            </div>
                            <div class="mb-3">
                              <label for="exampleFormControlInput1" class="form-label">Id</label>
                              <input name="id"
                                    readonly="readonly"
                                    value="<%= orador.getId()%>" 
                                    type="text" class="form-control" id="exampleFormControlTextarea1" maxlength="7">
                            </div>
                            <button class="btn btn-primary">
                                Guardar
                            </button>
                    </form>
                </section>
            </div>
        </main>
    </body>	
</html>