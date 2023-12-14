<html>
    <head>
             <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
             <link rel="stylesheet" href="./css/styles.css">
    </head>

    <body>
        <main>
            <!-- ACA VA EL NAVBAR  -->
            <%@include file="navbar.jsp" %>
            <div class="container">
                <section class="border border-primary rounded-4 col-6 mx-auto text-center gradient">
                    <h1 class="text-center my-4">Alta</h1>
                    <!--  JSP -->
                    <form class="gradient" method="post"
                        action="<%=request.getContextPath()%>/AltaController">
                        <div class="my-3 mx-3">
                          <input name="nombre"  type="text" class="form-control" id="nombreTextarea" placeholder="Nombre" maxlength="50">
                        </div>
                        <div class="my-3 mx-3">
                          <input name="apellido" type="text" class="form-control" id="apellidoTextarea" placeholder="Apellido">
                        </div>
                        <div class="my-3 mx-3">
                          <input name="mail" type="text" class="form-control" id="mailTextarea" placeholder="@Mail" maxlength="50">
                        </div>
                        <div class="my-3 mx-3">
                          <input name="tema" type="text" class="form-control" id="temaTextarea" maxlength="20" placeholder="Tema">
                        </div>
                        <button class="btn btn-primary my-3">
                            Dar de alta
                        </button>
                    </form>
                </section>
            </div>
        </main>
    </body>	
</html>