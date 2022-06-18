<%-- 
    Document   : Sesiones
    Created on : 23/04/2022, 12:50:28 PM
    Author     : Pablo
--%>

<%@page import="ModeloVO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%

    HttpSession buscarSesion = (HttpSession) request.getSession();
    String usuario = "";
    String idusuario = "";
    String doc = "";

    if (buscarSesion.getAttribute("DatosUsuario") == null) {
        request.getRequestDispatcher("iniciarSesion.jsp").forward(request, response);
    } else {
        UsuarioVO usuarioVO = (UsuarioVO) buscarSesion.getAttribute("DatosUsuario");
        usuario = usuarioVO.getNombre();
        idusuario = usuarioVO.getIdusuario();
        doc = usuarioVO.getDocumento();
    }

%>


<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <title>Effetrans</title>
        <!-- Favicon icon -->
        <link rel="icon" type="image/png" sizes="16x16" href="./images/logo-effetrans.png">
        <link rel="stylesheet" href="./vendor/chartist/css/chartist.min.css">
        <link href="./vendor/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet">
        <link href="./vendor/owl-carousel/owl.carousel.css" rel="stylesheet">
        <link href="./css/style.css" rel="stylesheet">
        <link
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&family=Roboto:wght@100;300;400;500;700;900&display=swap"
            rel="stylesheet">
        <!-- Datatable -->
        <link href="./vendor/datatables/css/jquery.dataTables.min.css" rel="stylesheet">
    </head>
    <body>




    </body>
</html>
