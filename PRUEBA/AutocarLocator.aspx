<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AutocarLocator.aspx.cs" Inherits="GEST_BUS.AutocarLocator" %>

<%@ Register Assembly="GMaps" Namespace="Subgurim.Controles" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #GMap1 {
        height:100% !important;
        }
    </style>
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
        
        </div>
        <asp:Timer ID="Timer1" runat="server" Interval="10000" OnTick="Timer1_Tick"></asp:Timer>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <cc1:GMap ID="GMap1" Width="100%" enableGTrafficOverlay="true"  enableGoogleBar="true" enableServerEvents="true"  OnMarkerClick="GMap1_MarkerClick" Height="600px"  runat="server" ajaxUpdateProgressMessage="Cargando..." enablePostBackPersistence="true"  />
                <asp:Panel ID="Panel1" runat="server"></asp:Panel>
                
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick"></asp:AsyncPostBackTrigger>
            </Triggers>
        </asp:UpdatePanel>
        

    </div>
    
</asp:Content>

