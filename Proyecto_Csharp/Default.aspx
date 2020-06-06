<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Proyecto_Csharp.Default2" %>

<!DOCTYPE html>
<html lang="es">
<head runat="server">
  <title>Villa Monte Darwin</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <link rel="stylesheet" href="./css/main.css">
    <style>
        body
        {
            background-image: url('assets/img/default.jpg');
            align-content: center;
            text-align: center;
        }
    </style>
</head>

<%--<body background="assets/img/fondoIndex.jpg" align="center">--%>
<body>
    <form id="inicio" runat="server">
        <div class="card" style="width: 30rem;">
          <div class="card-body">
            <h5 class="card-title">Proyecto Darwin</h5>
            <p class="card-text">Este proyecto tiene como objetivo optimizar la organizacion de la villa Monte Darwin media una pagina
            web creada a base de ASP.Net .</p>
              <asp:LinkButton ID="Registrarse" runat="server" CssClass="btn btn-primary" OnClick="Registrarse_Click">Registrarse</asp:LinkButton>
              <asp:LinkButton ID="IniciarSesion" runat="server" CssClass="btn btn-primary" OnClick="IniciarSesion_Click">Iniciar Sesion</asp:LinkButton>
          </div>
        </div>
    </form>

  <!--====== Scripts -->

  <script src="./js/jquery-3.1.1.min.js"></script>
  <script src="./js/bootstrap.min.js"></script>
  <script src="./js/material.min.js"></script>
  <script src="./js/ripples.min.js"></script>
  <script src="./js/sweetalert2.min.js"></script>
  <script src="./js/jquery.mCustomScrollbar.concat.min.js"></script>
  <script src="./js/main.js"></script>
  <script>
    $.material.init();
  </script>
</body>
</html>
