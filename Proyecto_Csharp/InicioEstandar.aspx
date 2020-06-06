<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageEstandar.Master" AutoEventWireup="true" CodeBehind="InicioEstandar.aspx.cs" Inherits="Proyecto_Csharp.InicioEstandar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
		/* Set the size of the div element that contains the map */
	   #map {
		 height: 700px;  /* The height is 400 pixels */
		 width: 100%;  /* The width is the width of the web page */
		}
	 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
	<div class="container-fluid">
			<div class="page-header">
			  <h1 class="text-titles">Aqui puedes ver el mapa completo de Punta Arenas centrado en Monte Darwin</h1>
			</div>
			<div id="map"></div>
		</div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
	<script>
        // Initialize and add the map
        function initMap() {
            // The location of Punta Arenas
            var PuntaArenas = { lat: -53.158902, lng: -70.950747 };
            // The map, centered at Punta Arenas
            var map = new google.maps.Map(
                document.getElementById('map'), { zoom: 15, center: PuntaArenas });
            // The marker, positioned at Punta Arenas

			var marker = new google.maps.Marker({
				position: PuntaArenas,
				map: map, 
				title: 'Villa Monte Darwin'
			});

            var texto = '<h2> Villa Monte Darwin </h2>' + '<p> Descripcion del lugar</p>';

            var informacion = new google.maps.InfoWindow({
                content: texto
            });

            marker.addListener('click', function(){
                informacion.open(map, marker);
            });
        }
	</script>
	<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCB5GxsTk5l5Xk4vmTQJulMT_TZPYIEAvU&callback=initMap"></script>
</asp:Content>
