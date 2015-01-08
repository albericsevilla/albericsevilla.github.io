<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Mapa.ascx.cs" Inherits="Autocar_ServiceLocator.Mapa" %>
<%@ Register Assembly="GMaps" Namespace="Subgurim.Controles" TagPrefix="cc1" %>
<link href="css/bootstrap.min.css" rel="stylesheet" />
<style>
    #Mapa_txtRuta1 {
    display:none !important;
    }
    #Mapa_txtRuta2 {
    display:none;
    }


</style>
<div class="text-center">
               <asp:TextBox ID="txtRuta1" CssClass="form-control"  Width="300px" meta:resourcekey="tb_fromPointResource1" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtRuta2"   CssClass="form-control" meta:resourcekey="tb_endPointResource1" Width="300px" runat="server"></asp:TextBox>
        <cc1:GMap ID="GMap1" Width="100%" CssClass="embed-responsive" Height="400px" runat="server" Language="es" OnLoad="GMap1_Load" />
        <input type="button" id="bt_Go" class="btn btn-success"  onclick="Postback();" value="Recargar" />
          <script>
              function Postback() {
                  __doPostback();
              }
                            </script>
      <asp:Panel ID="Panel1" ScrollBars="Vertical" runat="server">
              <div id="div_directions"></div>
          </asp:Panel>
       
</div>