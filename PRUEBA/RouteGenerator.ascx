<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RouteGenerator.ascx.cs" Inherits="GEST_BUS.RouteGenerator" %>
<%@ Register Assembly="GMaps" Namespace="Subgurim.Controles" TagPrefix="cc1" %>
<%@ Register Src="~/Mapa.ascx" TagPrefix="uc1" TagName="Mapa" %>
   <cc1:GMap ID="GMap1" Width="100%" CssClass="embed-responsive" Height="400px" runat="server" Language="es" />
        <asp:Button ID="Button1" runat="server" Text="Generar Ruta" OnClick="Button1_Click" UseSubmitBehavior="false"/>
<asp:Panel ID="Panel1" runat="server">

    
</asp:Panel>
