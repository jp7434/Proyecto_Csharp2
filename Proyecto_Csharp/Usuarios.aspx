<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Proyecto_Csharp.Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
    <div class="container-fluid">
		<div class="page-header">
			  <h1 class="text-titles"><i class="zmdi zmdi-account zmdi-hc-fw"></i> Usuarios </h1>
		</div>
		<p class="lead">En esta seccion se puede modificar los usuarios</p>
	</div>

	<div class="container-fluid">
		<div class="panel panel-info">
			<div class="panel-heading">
				<h3 class="panel-title"><i class="zmdi zmdi-plus"></i> &nbsp; NUEVO USUARIO</h3>
			</div>
			<div class="panel-body">
				<fieldset>
					<legend><i class="zmdi zmdi-account-box"></i> &nbsp; Información de usuario</legend>
					<div class="container-fluid">
						<div class="row">
							<div class="col-xs-12 col-sm-6">
								<div class="form-group label-floating">
                                    <asp:Label ID="nombresLabel" runat="server" Text="Nombres *" CssClass="control-label" AssociatedControlID="nombres"></asp:Label>
									<asp:TextBox ID="nombres" runat="server" CssClass="form-control" MaxLength="20"></asp:TextBox>
									<p class="help-block">Maximo 20 caracteres</p>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6">
								<div class="form-group label-floating">
                                    <asp:Label ID="apellidosLabel" runat="server" Text="Apellidos *" CssClass="control-label" AssociatedControlID="apellidos"></asp:Label>
                                    <asp:TextBox ID="apellidos" runat="server" CssClass="form-control" MaxLength="20"></asp:TextBox>
									<p class="help-block">Maximo 20 caracteres</p>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6">
								<div class="form-group label-floating">
                                    <asp:Label ID="usuarioLabel" runat="server" Text="Nombre Usuario *" CssClass="control-label" AssociatedControlID="usuario"></asp:Label>
                                    <asp:TextBox ID="usuario" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
									<p class="help-block">Maximo 10 caracteres</p>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6">
								<div class="form-group label-floating">
                                    <asp:Label ID="contraseñaLabel" runat="server" Text="Contraseña *" CssClass="control-label" AssociatedControlID="contraseña"></asp:Label>
                                    <asp:TextBox ID="contraseña" runat="server" CssClass="form-control" MaxLength="15"></asp:TextBox>
									<p class="help-block">Maximo 15 caracteres</p>
								</div>
							</div>
						</div>
					</div>
					<p class="text-center" style="margin-top: 20px;">
						<asp:LinkButton ID="guardar" runat="server" CssClass="btn btn-info btn-raised btn-sm" OnClick="Guardar_Click"><i class="zmdi zmdi-floppy"></i> Guardar</asp:LinkButton>
					</p>
				</fieldset>
			</div>
		</div>
	</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
