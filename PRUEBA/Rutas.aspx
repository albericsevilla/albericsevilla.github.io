<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Rutas.aspx.cs" Inherits="GEST_BUS.Rutas" EnableEventValidation="false" %>

<%@ Register Assembly="GMaps" Namespace="Subgurim.Controles" TagPrefix="cc1" %>
<%@ Register Src="~/Mapa.ascx" TagPrefix="uc1" TagName="Mapa" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div id="content">
        <div class="row">
            <div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
                <h1 class="page-title txt-color-blueDark">
                    <i class="fa fa-pencil-square-o fa-fw "></i>
                    Formularios
							<span>> 
								Añadir Rutas
                            </span>
                </h1>
            </div>
        </div>

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
                                    <asp:TextBox ID="txtOrigen" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="form-group">
                                <label  class="col-md-2">
                                    Destino:
                                </label>
                                <div class="col-md-10">
                                    <asp:TextBox ID="txtDestino" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />


                            <br />
                            <div class="text-align-right">
                                <asp:Button ID="btnGuardar" runat="server" CssClass="btn btn-primary"  OnClick="btnGuardar_Click" Text="Validar y Guardar" />
                                <br />
                                <small>Despues de guardar y validar intente recargar el mapa para ver las instrucciones.</small>
                      <%--       <input type="button" id="bt_Go" class="btn btn-success" onclick="Postback();" value="Recargar" />
                                <script>
                                    function Postback() {
                                        __doPostback();
                                    }
                                </script>--%>
                                               
                            </div>

                        </fieldset>
                    </div>
                </div>
            </div>
          
             <div class="jarviswidget jarviswidget-sortable jarviswidget-color-blue" id="wid-id-2" data-widget-togglebutton="false" data-widget-editbutton="false" data-widget-fullscreenbutton="false" data-widget-colorbutton="false" data-widget-deletebutton="false" role="widget">
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
                <header role="heading">
                    <span class="widget-icon"><i class="glyphicon glyphicon-stats txt-color-darken"></i></span>
                    <h2>Lista de Rutas</h2>


                    <span class="jarviswidget-loader"><i class="fa fa-refresh fa-spin"></i></span>
                </header>

                <!-- widget div-->
                 <div class="no-padding" role="content">
                     <!-- widget edit box -->
                     <div class="jarviswidget-editbox">
                         test
                     </div>
                     <!-- end widget edit box -->
                      
                     <div class="widget-body">
                         <telerik:RadGrid ID="RadGrid1" Skin="MetroTouch" MasterTableView-DataKeyNames="IdRuta" AutoGenerateColumns="false" runat="server">
                             <MasterTableView>
                                 <Columns>
                                     <telerik:GridTemplateColumn>
                                            <ItemTemplate>
                                                <asp:ImageButton ID="getRuta" OnClick="getRuta_Click" CommandArgument='<%# DataBinder.Eval(Container.DataItem,"IdRuta") %>' Width="20px" ImageUrl="~/img/getruta.png" runat="server" />
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                     <telerik:GridBoundColumn DataField="Nombre" HeaderText="Nombre"></telerik:GridBoundColumn>
                                 </Columns>
                             </MasterTableView>

                            

                         </telerik:RadGrid>

                     </div>
                     <asp:TextBox ID="tbInicioOculto" CssClass="form-control" runat="server"></asp:TextBox>
                     <asp:TextBox ID="tbDestionOculto" CssClass="form-control" runat="server"></asp:TextBox>
                     <input type="button" id="btn_go2" value="Let's go!" />

                 </div>
                <!-- end widget div -->
            </div>  

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
                        <fieldset>
                            <asp:Panel ID="Panel1" ScrollBars="Auto" runat="server">
                                <br />
                                <cc1:GMap ID="GMap1" Width="100%" CssClass="embed-responsive" Height="400px" runat="server" Language="es" />
                                <hr />
                                <div class="pull-right"><input type="image" id="bt_Go" src="img/reload.png" width="50" onclick="Postback();"  /></div>
                                <script>
                                    function Postback() {
                                        __doPostback();
                                    }
                                </script>
                                <br />
                                <small>Recarge el mapa para ver las instrucciones.</small>
                                <asp:Panel ID="Panel2" ScrollBars="Vertical" runat="server">
                                    <div id="div_directions"></div>
                                </asp:Panel>

                            </asp:Panel>
                        </fieldset>
                    </div>
                </div>
            </div>
        </article>

    </div>
    
</asp:Content>
