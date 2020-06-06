<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageEstandar.Master" AutoEventWireup="true" CodeBehind="CuotaEstandar.aspx.cs" Inherits="Proyecto_Csharp.CuotaEstandar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
    <div class="container-fluid">
			<div class="page-header">
			  <h1 class="text-titles"><i class="zmdi zmdi-account zmdi-hc-fw"></i> Pago de cuotas</h1>
			</div>
			<p class="lead">Los usuarios pueden acceder y visualizar los pagos de sus respectivas cuotas</p>
		</div>

		<div class="container-fluid">
			<ul class="breadcrumb breadcrumb-tabs">
                <li>
			  		<a href="Pagocuota.aspx" class="btn btn-info">
			  			<i class="zmdi zmdi-plus"></i> &nbsp; PAGAR CUOTA
			  		</a>
			  	</li>
			  	<li>
			  		<a href="Cuotas.aspx" class="btn btn-success">
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
									<th class="text-center">#</th>
									<th class="text-center">NUMERO TRANSACCION</th>
									<th class="text-center">MES</th>
									<th class="text-center">ESTADO DEL PAGO</th>
									<th class="text-center">MEDIO DE PAGO</th>
                                    <th class="text-center">TOTAL A PAGAR</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>7890987651</td>
									<td>MARZO</td>
									<td>Pagado</td>
									<td>Webpay</td>
                                    <td>$3.500</td>
								</tr>
							</tbody>
                            <tbody>
								<tr>
									<td>2</td>
									<td>9274980656</td>
									<td>ABRIL</td>
									<td>Pagado</td>
									<td>Webpay</td>
                                    <td>$3.500</td>
								</tr>
   							</tbody>
                            <tbody>
								<tr>
									<td>3</td>
									<td>1460903659</td>
									<td>MAYO</td>
									<td>Pagado</td>
									<td>Webpay</td>
                                    <td>$3.500</td>
								</tr>
							</tbody>
                            <tbody>
								<tr>
									<td>4</td>
									<td>9680984650</td>
									<td>JUNIO</td>
									<td>Pagado</td>
									<td>Webpay</td>
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
