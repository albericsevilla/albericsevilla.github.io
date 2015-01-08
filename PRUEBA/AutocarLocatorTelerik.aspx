<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AutocarLocatorTelerik.aspx.cs" Inherits="GEST_BUS.AutocarLocatorTelerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div id="content">
        <div class="row">
            <div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
                <h1 class="page-title txt-color-blueDark">
                    <i class="fa fa-pencil-square-o fa-fw "></i>
                    GMAPS
							<span>> 
								Lista de autobuses en ruta
                            </span>
                </h1>
               </div>
            <telerik:RadMap ID="RadMap1" Width="100%" Height="600px" Zoom="3"  runat="server">
                <LayersCollection>
                     <telerik:MapLayer Type="Tile" Subdomains="a,b,c"
                         UrlTemplate="http://#= subdomain #.tile.openstreetmap.org/#= zoom #/#= x #/#= y #.png"
                         Attribution="&copy; <a href='http://osm.org/copyright' title='OpenStreetMap contributors' target='_blank'>OpenStreetMap contributors</a>.">
                    </telerik:MapLayer>
                </LayersCollection>
                <MarkerDefaultsSettings Shape="pinTarget"></MarkerDefaultsSettings>
                <CenterSettings Latitude="40.4167754" Longitude="-3.7037902" />
               
            </telerik:RadMap>
        </div>
        <br />
        <div class="row">
            <div class="col-3">
                <strong>
                    Conductor: 
                </strong>
            </div>
            <div class="col-3">
                <asp:Label ID="lblConductor" runat="server" Text=""></asp:Label>
            </div>
        </div>
        </div>
    
    <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick"  Interval="60000"></asp:Timer>
</asp:Content>
