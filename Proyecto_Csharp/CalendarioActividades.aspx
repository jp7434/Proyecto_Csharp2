<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CalendarioActividades.aspx.cs" Inherits="Proyecto_Csharp.CalendarioActividades" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" ForeColor="Black" NextPrevFormat="FullMonth" OnDayRender="Calendar1_DayRender">
        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="#333333"/>
        <NextPrevStyle ForeColor="White" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
        <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" ForeColor="#333333"/>
        <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White"/>
        <TodayDayStyle BackColor="#CCCC99" />
    </asp:Calendar>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
