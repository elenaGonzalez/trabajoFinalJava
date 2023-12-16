<%-- 
    Document   : index
    Created on : 12/12/2023, 19:25:25
    Author     : Ele
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="./css/styles.css">
        <title>Inicio</title>
    </head>
    <body>
         <%@include file="navbar.jsp" %>
       <main>
        <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel" data-interval="1000">
            <div class="carousel-inner">
                <div class="carousel-item active row justify-content-center">
                    <img src="coffee.jpg" class="d-block w-100" alt="Coffee">
                </div>
                <div class="carousel-item row justify-content-center">
                    <img src="people.jpg" class="d-block w-100" alt="People">
                </div>
                <div class="carousel-item row justify-content-center">
                    <img src="computer.jpg" class="d-block w-100" alt="Computer">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying"
                    data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying"
                    data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
           <div><%@include file="footer.jsp" %></div>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
                integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
                integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
          
       </main>
    </body>
</html>
