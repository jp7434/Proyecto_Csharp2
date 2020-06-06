<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CuotaAdmin.aspx.cs" Inherits="Proyecto_Csharp.CuotaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
    <div class="container-fluid">
			<div class="page-header">
			  <h1 class="text-titles"><i class="zmdi zmdi-account zmdi-hc-fw"></i>Cuotas pagadas</h1>
			</div>
			<p class="lead">Los administadores pueden visualizar todos los pagos realiados por los usuarios</p>
		</div>

		<div class="container-fluid">
			<ul class="breadcrumb breadcrumb-tabs">
			  	<li>
			  		<a href="CuotaAdmin.aspx" class="btn btn-success">
			  			<i class="zmdi zmdi-format-list-bulleted"></i> &nbsp; LISTA DE CUOTA
			  		</a>
			  	</li>
			</ul>
		</div>
		
		<!-- Panel listado de administradores -->
		<div class="container-fluid">
			<div class="panel panel-success">
				<div class="panel-heading">
					<h3 class="panel-title"><i class="zmdi zmdi-format-list-bulleted"></i> &nbsp; LISTA DE PAGOS REALIZADOS</h3>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-hover text-center">
							<thead>
								<tr>
									<th class="text-center">NOMBRE</th>
                                    <th class="text-center">APELLIDO</th>
									<th class="text-center">NUMERO TRANSACCION</th>
									<th class="text-center">MES</th>
									<th class="text-center">ESTADO DEL PAGO</th>
                                    <th class="text-center">MONTO PAGADO</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Hugo</td>
                                    <td>Sandoval</td>
									<td>7890987651</td>
									<td>MARZO</td>
									<td>Pagado</td>
                                    <td>$3.500</td>
								</tr>
							</tbody>
                            <tbody>
								<tr>
									<td>James</td>
                                    <td>Pavilion</td>
									<td>9274980656</td>
									<td>MARZO</td>
									<td>Pagado</td>
                                    <td>$3.500</td>
								</tr>
   							</tbody>
                            <tbody>
								<tr>
									<td>Nicol</td>
                                    <td>Perez</td>
									<td>1460903659</td>
									<td>MARZO</td>
									<td>Pagado</td>
                                    <td>$3.500</td>
								</tr>
							</tbody>
                            <tbody>
								<tr>
									<td>Barbara</td>
                                    <td>Miranda</td>
									<td>9680984650</td>
									<td>MARZO</td>
									<td>Pagado</td>
                                    <td>$3.500</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
