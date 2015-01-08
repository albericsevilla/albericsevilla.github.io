<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="GeneradorRutas.aspx.cs" Inherits="GEST_BUS.GeneradorRutas"%>

<%@ Register Assembly="GMaps" Namespace="Subgurim.Controles" TagPrefix="cc1" %>
<%@ Register Src="~/Mapa.ascx" TagPrefix="uc1" TagName="Mapa" %>
<%@ Register Src="~/RouteGenerator.ascx" TagPrefix="uc1" TagName="RouteGenerator" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel3"   runat="server">
        
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div id="content">
        <article class="col-sm-12 col-md-12 col-lg-6">
            <!-- Widget ID (each widget will need unique ID)-->
            <div class="jarviswidget jarviswidget-color-green" id="wid-id-0" data-widget-colorbutton="false" data-widget-deletebutton="false" data-widget-fullscreenbutton="false" data-widget-editbutton="false">
                <!-- widget options:
								usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">
				
								data-widget-colorbutton="false"
								data-widget-editbutton="false"
								data-widget-togglebutton="false"
								data-widget-deletebutton="false"
								data-widget-fullscreenbutton="false"
								data-widget-custombutton="false"
								data-widget-collapsed="true"
								data-widget-sortable="false"
				
								-->
                <header>
                    <span class="widget-icon"><i class="fa fa-location-arrow"></i></span>
                    <h2>Añadir Rutas</h2>

                </header>

                <!-- widget div-->
                <div>

                    <!-- widget edit box -->
                    <div class="jarviswidget-editbox">
                        <!-- This area used as dropdown edit box -->

                    </div>
                    <!-- end widget edit box -->
                    <div class="widget-body">
                        <fieldset>
                            <legend>Añadir/Editar/Eliminar</legend>
                            <br />
                            <div class="form-group">
                                <label class="col-md-2">
                                    Origen:
                                </label>
                                <div class="col-md-10">
                                    <asp:TextBox ID="txtOrigen" CssClass="form-control" runat="server" OnTextChanged="txtOrigen_TextChanged"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="form-group">
                                <label class="col-md-2">
                                    Destino:
                                </label>
                                <div class="col-md-10">
                                    <asp:TextBox ID="txtDestino" CssClass="form-control" runat="server" OnTextChanged="txtDestino_TextChanged"></asp:TextBox>
                                </div>
                            </div>
                            <%--<br />


                            <br />
                            <div class="text-align-right">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                <asp:Button ID="btnGuardar" runat="server" CssClass="btn btn-primary" UseSubmitBehavior="false"  Text="Guardar"  />
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                <br />
                                <small>Despues de guardar y validar intente recargar el mapa para ver las instrucciones.</small>
                                <%--       <input type="button" id="bt_Go" class="btn btn-success" onclick="Postback();" value="Recargar" />
                                <script>
                                    function Postback() {
                                        __doPostback();
                                    }
                                </script>--%>
                            <%--</div>--%>

                        </fieldset>
                    </div>
                </div>
            </div>

            <asp:Panel ID="PanelPuntosPaso" runat="server" >
                <div class="jarviswidget jarviswidget-color-green" data-widget-colorbutton="false" data-widget-deletebutton="false" data-widget-fullscreenbutton="false" data-widget-editbutton="false" >
                    <!-- widget options:
								usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">
				
								data-widget-colorbutton="false"
								data-widget-editbutton="false"
								data-widget-togglebutton="false"
								data-widget-deletebutton="false"
								data-widget-fullscreenbutton="false"
								data-widget-custombutton="false"
								data-widget-collapsed="true"
								data-widget-sortable="false"
				
								-->
                    <header>
                        <span class="widget-icon"><i class="fa fa-location-arrow"></i></span>
                        <h2>Añadir Puntos de paso</h2>

                    </header>

                    <!-- widget div-->
                    <div>

                        <!-- widget edit box -->
                        <div class="jarviswidget-editbox">
                            <!-- This area used as dropdown edit box -->

                        </div>
                        <!-- end widget edit box -->
                        <div class="widget-body" style="height:inherit">
                            <fieldset>
                                <legend>Añadir/Editar/Eliminar</legend>
                                <br />
                                <div class="form-group">
                                    <label class="col-md-2">
                                        Punto de Paso:
                                    </label>
                                    <div class="col-md-8">
                                        <asp:TextBox ID="txtPuntoPaso1" CssClass="form-control" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                                        <br />
                                        <asp:TextBox ID="txtPuntoPaso2" CssClass="form-control" runat="server" OnTextChanged="txtPuntoPaso2_TextChanged" Visible="false" ></asp:TextBox>
                                        <br />
                                        <asp:TextBox ID="txtPuntoPaso3" CssClass="form-control" runat="server" OnTextChanged="txtPuntoPaso3_TextChanged" Visible="false"></asp:TextBox>
                                        <br />
                                        <asp:TextBox ID="txtPuntoPaso4" CssClass="form-control" runat="server" OnTextChanged="txtPuntoPaso4_TextChanged" Visible="false"></asp:TextBox>
                                        <br />
                                        <asp:TextBox ID="txtPuntoPaso5" CssClass="form-control" runat="server" OnTextChanged="txtPuntoPaso5_TextChanged" Visible="false"></asp:TextBox>
                                        <br />
                                        <asp:TextBox ID="txtPuntoPaso6" CssClass="form-control" runat="server" OnTextChanged="txtPuntoPaso6_TextChanged" Visible="false"></asp:TextBox>
                                       
                                    </div>
                                    <div class="col-md-2">
                                       
                                        <%--<asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                            <ContentTemplate>--%>
                                                <asp:Button ID="Button2" runat="server" Text="Mas Puntos Paso" UseSubmitBehavior="false" OnClick="Button2_Click"/>
                                        <%--    </ContentTemplate>
                                        </asp:UpdatePanel>--%>
                                        <%--<asp:ImageButton ID="ImageButton1" runat="server" />--%>
                                        <%--                                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" OnTextChanged="txtOrigen_TextChanged"></asp:TextBox>--%>
                                    </div>
                                </div>

                                <%--<br />
                                <br />
                                <div class="text-align-right">
                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                        <ContentTemplate>
                                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" UseSubmitBehavior="false" Text="Guardar"  />
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                    <br />
                                    <small>Despues de guardar y validar intente recargar el mapa para ver las instrucciones.</small>--%>
                                    <%--       <input type="button" id="bt_Go" class="btn btn-success" onclick="Postback();" value="Recargar" />
                                <script>
                                    function Postback() {
                                        __doPostback();
                                    }
                                </script>--%>
                                <%--</div>--%>

                            </fieldset>
                        </div>
                    </div>
                </div>
            </asp:Panel>
        </article>

        <article class="col-sm-12 col-md-12 col-lg-6">

            <div class="jarviswidget jarviswidget-color-yellow" id="wid-id-1" data-widget-colorbutton="false" data-widget-deletebutton="false" data-widget-fullscreenbutton="false" data-widget-editbutton="false">
                <!-- widget options:
								usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">
				
								data-widget-colorbutton="false"
								data-widget-editbutton="false"
								data-widget-togglebutton="false"
								data-widget-deletebutton="false"
								data-widget-fullscreenbutton="false"
								data-widget-custombutton="false"
								data-widget-collapsed="true"
								data-widget-sortable="false"
				
								-->
                <header>
                    <span class="widget-icon"><i class="fa fa-location-arrow"></i></span>
                    <h2>GMAPS</h2>

                </header>

                <!-- widget div-->
                <div>

                    <!-- widget edit box -->
                    <div class="jarviswidget-editbox">
                        <!-- This area used as dropdown edit box -->

                    </div>
                    <!-- end widget edit box -->
                    <div class="widget-body">
                        <fieldset><legend><strong>GMAPS</strong></legend>
                            <asp:Panel ID="Panel1" ScrollBars="Auto" runat="server">
                                <br />
                                <%--<asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                    <ContentTemplate>--%>
                                        <cc1:GMap ID="GMap1" Width="100%" CssClass="embed-responsive" Height="400px" runat="server" Language="es" />
                                    <%--</ContentTemplate>
                                </asp:UpdatePanel>--%>
                                <uc1:RouteGenerator runat="server" id="RouteGenerator" />
                                <hr />
                                <div class="pull-right">
                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                        <ContentTemplate>
                                            <asp:Button ID="Button3" runat="server" Text="Guardar Ruta" OnClick="btnGuardar_Click1" UseSubmitBehavior="false" />
                                            
                                        </ContentTemplate>
                                    </asp:UpdatePanel>

                                    <input type="image" id="bt_Go" src="img/reload.png" width="50" style="visibility:hidden"/>
                                </div>
                                <script>
                                    function Postback() {
                                        __doPostback();
                                    }
                                </script>
                                <%--<br />
                                <small>Recarge el mapa para ver las instrucciones.</small>
                                <asp:Panel ID="Panel2" ScrollBars="Vertical" runat="server">
                                    <div id="div_directions"></div>
                                </asp:Panel>--%>

                            </asp:Panel>
                        </fieldset>
                    </div>
                </div>
            </div>
        </article>
    </div>
        </asp:Panel>
</asp:Content>