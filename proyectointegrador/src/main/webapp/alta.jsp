<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="./css/styles.css">
        <!-- Option 1: Include in HTML -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    </head>

    <body>
        <%@include file="navbar.jsp" %>
        <main>
            <div class="container">
                <section class="bg-secondary-subtle border rounded-5 m-4 px-2 pt-2 pb-3 col-12 mx-auto text-center">
                    <h1 class="text-center my-4">Alta</h1>
                    <!--  JSP -->
                    <form method="post"
                          action="<%=request.getContextPath()%>/AltaController">
                        <div class="my-3 mx-3">
                            <input name="nombre"  type="text" class="form-control" id="nombreTextarea" placeholder="Nombre" maxlength="50" required>
                        </div>
                        <div class="my-3 mx-3">
                            <input name="apellido" type="text" class="form-control" id="apellidoTextarea" placeholder="Apellido" required>
                        </div>
                        <div class="my-3 mx-3">
                            <input name="mail" type="email" class="form-control" id="mailTextarea" placeholder="@Mail" maxlength="50" required>
                        </div>
                        <div class="my-3 mx-3">
                            <input name="tema" type="text" class="form-control" id="temaTextarea" maxlength="30" placeholder="Tema" required>
                        </div>
                        <button class="btn btn-primary my-3">
                            <i class="bi-check2-circle"></i>Dar de alta
                        </button>
                    </form>
                </section>
            </div>
        </main>
    </body>	
</html>