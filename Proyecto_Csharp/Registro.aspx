<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Proyecto_Csharp.Registro" %>

<!DOCTYPE html>
<html lang="es">
<head>
	<title>Registro</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<link rel="stylesheet" href="./css/main.css">
	<style>
        body
        {
            background-image: url('assets/img/default.png');
        }
    </style>
</head>
<body>
	<div class="full-box login-container cover">
		<form id="login" method="post" autocomplete="off" class="logInForm" runat="server">
			<p class="text-center text-muted"><i class="zmdi zmdi-account-circle zmdi-hc-5x"></i></p>
			<p class="text-center text-muted text-uppercase">Inicia sesión con tu cuenta</p>
			<div class="form-group label-floating">
                <asp:Label ID="rutLabel" runat="server" Text="RUT" CssClass="control-label" AssociatedControlID="rut" ></asp:Label>
                <asp:TextBox ID="rut" runat="server" CssClass="form-control" ForeColor="White" MaxLength="11" OnTextChanged="Rut_TextChanged" ></asp:TextBox>
			  <p class="help-block">Escriba su Rut sin puntos ni guion</p>
			</div>
			<div class="form-group label-floating">
                <asp:Label ID="usuarioLabel" runat="server" Text="Usuario" CssClass="control-label" AssociatedControlID="usuario"></asp:Label>
                <asp:TextBox ID="usuario" runat="server" CssClass="form-control" ForeColor="White" OnTextChanged="Usuario_TextChanged" ></asp:TextBox>
			  <p class="help-block">Escribe tú nombre de usuario</p>
			</div>
			<div class="form-group label-floating">
                <asp:Label ID="contraseñaLabel" runat="server" Text="Contraseña" CssClass="control-label" AssociatedControlID="contraseña"></asp:Label>
                <asp:TextBox ID="contraseña" runat="server" CssClass="form-control" ForeColor="White" TextMode="Password"></asp:TextBox>
			  <p class="help-block">Escribe tú contraseña</p>
			</div>
			<div class="form-group text-center">
				<asp:Button ID="Button1" runat="server" Text="Registrarse" CssClass="btn btn-info" style="color: #FFF;" OnClick="Button1_Click"/>
			</div>
		</form>
	</div>
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
