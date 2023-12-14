<%@page import="java.util.List" %>
<%@page import="com.codoacodo.model.Orador"%>
<!DOCTYPE html>
<html lang="es-ar" data-bs-theme="light">
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        
        <title>
            Listado
        </title>
    </head>

    <body>
        <!-- ACA VA EL NAVBAR  -->
        <%@include file="navbar.jsp" %>
        <main>
            <div class="container">

                <section class="bg-secondary-subtle border rounded-5 m-4 px-2 pt-2 pb-3 col-12 mx-auto text-center">
                    <h2 class="my-4">Listado de Oradores</h2>
                    <table class="table table-sm table-striped table-hover border border-success">
                        <thead>
                            <tr>
                                <th scope="col">ID</th>
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
                        %>
                        <tbody>
                            <%
                                for (Orador unOrador : listado) {
                            %>

                            <tr>
                                <th scope="row"> <%=unOrador.getId()%> </th>
                                <td><%=unOrador.getNombre()%></td>
                                <td><%=unOrador.getApellido()%></td>
                                <td><%=unOrador.getMail()%></td>
                                <td><%=unOrador.getTema()%></td>
                                <td>
                                    <i class="bi bi-trash"><a class="btn btn-danger" href="<%=request.getContextPath()%>/api/EliminarController?id=<%=unOrador.getId()%>" role="button">Eliminar</a> | 
                                    </i>
                                    <a class="btn btn-secondary" href="<%=request.getContextPath()%>/api/EditarController?id=<%=unOrador.getId()%>" role="button">Editar</a>
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
    </body>	
</html>