<%@page import="java.util.List" %>
<%@page import="com.codoacodo.model.Orador"%>
<!DOCTYPE html>
<html lang="es-ar" data-bs-theme="light">
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="./css/styles.css">
        <!-- Option 1: Include in HTML -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.10.1/sweetalert2.min.css" referrerpolicy="no-referrer" />
        <title>
            Listado
        </title>
    </head>

    <body>
        <%@include file="navbar.jsp" %>
        <main>
            <div class="container">
                <h3 class="text-right"> <i class="bi-check2-circle"></i><a href="<%=request.getContextPath()%>/alta.jsp">Alta</a></h3>
                <section class="bg-secondary-subtle border rounded-5 m-4 px-2 pt-2 pb-3 col-12 mx-auto text-center">

                    <h2 class="my-4">Listado de Oradores</h2>
                    <table class="table table-sm table-striped table-hover border border-success">
                        <thead>
                            <tr>
                                <th scope="col"><i class="bi-person-circle"></i>ID</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Apellido</th>
                                <th scope="col">Mail</th>
                                <th scope="col">Tema</th>
                                <th scope="col">Acciones</th>
                            </tr>
                        </thead>
                        <%
                            //codigo java
                            //obtener el listado desde el request
                            //se guardo bajo el nombre de "listado"
                            List<Orador> listado = (List<Orador>) request.getAttribute("listado");
                            //veo paginación


                        %>
                        <tbody>
                            <%                                for (Orador unOrador : listado) {
                            %>

                            <tr>
                                <th scope="row"> <%=unOrador.getId()%> </th>
                                <td><%=unOrador.getNombre()%></td>
                                <td><%=unOrador.getApellido()%></td>
                                <td><%=unOrador.getMail()%></td>
                                <td><%=unOrador.getTema()%></td>
                                <td>
                                    <i>
                                        <a class="btn btn-danger bi bi-trash"  href="<%=request.getContextPath()%>/api/EliminarController?id=<%=unOrador.getId()%>" role="button">Borrar</a>        

                                    </i> 

                                    <a class="btn btn-secondary bi bi-pencil" id="editar" href="<%=request.getContextPath()%>/api/EditarController?id=<%=unOrador.getId()%>" role="button">Editar</a>
                                   
                                </td>
                            </tr>
                            <%
                                }
                            %>

                        </tbody>
                    </table>
                </section>
            </div>
        </main>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.10.1/sweetalert2.all.min.js" referrerpolicy="no-referrer">
        </script>                 
    </body>	
</html>