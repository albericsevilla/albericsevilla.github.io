<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddPasajero.aspx.cs" Inherits="GEST_BUS.AddPasajero" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadScriptManager ID="RadScriptManager1" runat="server"></telerik:RadScriptManager>
    <div id="content">
        <div class="row">
            <div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
                <h1 class="page-title txt-color-blueDark">
                    <i class="fa fa-pencil-square-o fa-fw "></i>
                    Formularios
							<span>> 
								Añadir Pasajeros
                            </span>
                </h1>
            </div>
        </div>

        <article class="col-sm-12 col-md-12 col-lg-6">
            <!-- Widget ID (each widget will need unique ID)-->
            <div class="jarviswidget" id="wid-id-0" data-widget-colorbutton="false" data-widget-deletebutton="false" data-widget-fullscreenbutton="false" data-widget-editbutton="false">
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
                    <span class="widget-icon"><i class="fa fa-users"></i></span>
                    <h2>Añadir Pasajeros</h2>

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
                            <div class="form-group">
                                <label class="col-md-2 control-label">Fecha de Nacimiento</label>
                                <div class="col-md-10">
                                    <telerik:RadDatePicker ID="RadDatePicker1" Width="100%" runat="server" Skin="MetroTouch">
                                        <Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" EnableWeekends="True" Culture="es-ES" FastNavigationNextText="&amp;lt;&amp;lt;" Skin="MetroTouch"></Calendar>

                                        <DateInput DisplayDateFormat="dd/MM/yyyy" DateFormat="dd/MM/yyyy" LabelWidth="40%">
                                            <EmptyMessageStyle Resize="None"></EmptyMessageStyle>

                                            <ReadOnlyStyle Resize="None"></ReadOnlyStyle>

                                            <FocusedStyle Resize="None"></FocusedStyle>

                                            <DisabledStyle Resize="None"></DisabledStyle>

                                            <InvalidStyle Resize="None"></InvalidStyle>

                                            <HoveredStyle Resize="None"></HoveredStyle>

                                            <EnabledStyle Resize="None"></EnabledStyle>
                                        </DateInput>

                                        <DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
                                    </telerik:RadDatePicker>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="form-group">
                                <label class="col-md-2 control-label">Nombre</label>
                                <div class="col-md-10">
                                    <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>

                            </div>
                            <br />
                            <br />
                            <div class="form-group">
                                <label class="col-md-2 control-label">NIF</label>
                                <div class="col-md-10">
                                    <asp:TextBox ID="txtNIF" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="form-group">
                                <label class="col-md-2 control-label">País</label>
                                <div class="col-md-10">
                                    <asp:TextBox ID="txtPais" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="form-group">
                                <label class="col-md-2 control-label">Provincia</label>
                                <div class="col-md-10">
                                    <asp:TextBox ID="txtProvincia" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="form-group">
                                <label class="col-md-2 control-label">Localidad</label>
                                <div class="col-md-10">
                                    <asp:TextBox ID="txtLocalidad" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="form-group">
                                <label class="col-md-2 control-label">Código Postal</label>
                                <div class="col-md-10">
                                    <asp:TextBox ID="txtCP" Width="40%" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="form-group">
                                <label class="col-md-2 control-label">Dirección</label>
                                <div class="col-md-10">
                                    <asp:TextBox ID="txtDireccion" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="form-group">
                                <label class="col-md-2 control-label">Teléfono Fijo</label>
                                <div class="col-md-10">
                                    <asp:TextBox ID="txtTelefonoFijo" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="form-group">
                                <label class="col-md-2 control-label">Teléfono Movil</label>
                                <div class="col-md-10">
                                    <asp:TextBox ID="txtTlfMovil" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="form-group">
                                <label class="col-md-2 control-label">Email</label>
                                <div class="col-md-10">
                                    <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <br />
                            <br />
                            <div class="text-align-right">
                                <asp:Button ID="btnLimpiar" runat="server" CssClass="btn btn-warning" OnClick="btnLimpiar_Click" Text="Nuevo Registro"  rel="tooltip" data-placement="left" data-original-title="<i class='fa fa-check text-success'></i> Este botón limpia el formulario para que puedas añadir un nuevo registro." data-html="true" />
                                <asp:Button ID="btnGuardar" runat="server" CssClass="btn btn-primary" OnClick="btnGuardar_Click" Text="Guardar" />
                            </div>

                        </fieldset>
                    </div>
                </div>
            </div>
        </article>

        <article class="col-sm-12 col-md-12 col-lg-6">
            <div class="jarviswidget" id="wid-id-1" data-widget-colorbutton="false" data-widget-deletebutton="false" data-widget-fullscreenbutton="false" data-widget-editbutton="false">
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
                    <span class="widget-icon"><i class="fa fa-users"></i></span>
                    <h2>Editar / Eliminar Pasajeros</h2>

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
                            <legend>Introduzca un pasajero a buscar</legend>
                            <table>
                                <tr>
                                    <td style="width: 100%">
                                        <asp:TextBox ID="txtBuscar" CssClass="form-control" Width="100%" runat="server"></asp:TextBox></td>
                                    <td>
                                        <asp:Button ID="btnBuscar" CssClass="btn btn-success" OnClick="btnBuscar_Click" runat="server" Text="Buscar" /></td>
                                </tr>

                            </table>

                            <br />

                            <asp:Panel ID="Panel1" ScrollBars="Auto" runat="server">
                                <asp:DataList ID="DataList1" DataKeyField="IdPasajero" runat="server">
                                    <ItemTemplate>
                                        <label>
                                            <strong>Nombre:</strong>
                                        </label>
                                        <label style="padding-right: 20px;">
                                            <%# DataBinder.Eval(Container.DataItem,"Nombre") %>
                                        </label>
                                        <label>
                                            <strong>NIF:</strong>
                                        </label>
                                        <label>
                                            <%# DataBinder.Eval(Container.DataItem,"NIF") %>
                                        </label>

                                        <label style="padding-left: 15px;">
                                            <strong>País:</strong>
                                        </label>
                                        <label>
                                            <%# DataBinder.Eval(Container.DataItem,"Pais") %>
                                        </label>
                                        <br />
                                        <label>
                                            <strong>Provincia:</strong>
                                        </label>
                                        <label style="padding-right: 5px;">
                                            <%# DataBinder.Eval(Container.DataItem,"Provincia") %>
                                        </label>

                                        <label>
                                            <strong>Localidad:</strong>
                                        </label>
                                        <label style="padding-right: 5px;">
                                            <%# DataBinder.Eval(Container.DataItem,"Localidad") %>
                                        </label>

                                        <label>
                                            <strong>Código Postal:</strong>
                                        </label>
                                        <label>
                                            <%# DataBinder.Eval(Container.DataItem,"CodPostal") %>
                                        </label>
                                        <br />
                                        <label>
                                            <strong>Dirección:</strong>
                                        </label>
                                        <label>
                                            <%# DataBinder.Eval(Container.DataItem,"Direccion") %>
                                        </label>
                                        <br />
                                        <label>
                                            <strong>Teléfono Fijo:</strong>
                                        </label>
                                        <label style="padding-right: 5px;">
                                            <%# DataBinder.Eval(Container.DataItem,"TelefonoFija") %>
                                        </label>

                                        <label>
                                            <strong>Teléfono Movil:</strong>
                                        </label>
                                        <label style="padding-right: 5px;">
                                            <%# DataBinder.Eval(Container.DataItem,"TelefonoMovil") %>
                                        </label>
                                        <br />
                                        <label>
                                            <strong>Email:</strong>
                                        </label>
                                        <label>
                                            <%# DataBinder.Eval(Container.DataItem,"EMail") %>
                                        </label>
                                        <br />
                                        <asp:HiddenField ID="HiddenFieldItem" Value='<%# DataBinder.Eval(Container.DataItem,"IdPasajero") %>' runat="server" />
                                        <input id="Button1" data-toggle="modal" data-target="#myModal1" class="btn btn-success" type="button" value="Añadir Ruta" />
                                        <asp:Button ID="btnEditar" CssClass="btn  btn-warning" CommandArgument='<%# DataBinder.Eval(Container.DataItem,"IdPasajero") %>' OnCommand="btnEditar_Command" runat="server" Text="Editar" />
                                        <asp:Button ID="btnEliminar" CssClass="btn btn-danger" CommandArgument='<%# DataBinder.Eval(Container.DataItem,"IdPasajero") %>' OnCommand="btnEliminar_Command" runat="server" Text="Eliminar" />
                                        <br />
                                        <!-- Modal -->
                                        <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">Añadir Ruta - Pasajero: '<%# DataBinder.Eval(Container.DataItem,"Nombre") %>'</h4>

                                                    </div>
                                                    <div class="modal-body">
                                                        <label>
                                                            Rutas
                                                        </label>
                                                        <asp:DropDownList ID="cbAutocarRuta1" AutoPostBack="true" CssClass="form-control"  OnSelectedIndexChanged="cbAutocarRuta1_SelectedIndexChanged" runat="server"></asp:DropDownList>
                                                        <br />
                                                     
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                                        <asp:Button ID="btnAniadirRuta" CssClass="btn btn-primary" CommandArgument='<%# DataBinder.Eval(Container.DataItem,"IdPasajero") %>' runat="server" OnClick="btnAniadirRuta_Click" Text="Guardar Cambios" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                    <AlternatingItemTemplate>
                                        <label>
                                            <strong>Nombre:</strong>
                                        </label>
                                        <label style="padding-right: 20px;">
                                            <%# DataBinder.Eval(Container.DataItem,"Nombre") %>
                                        </label>
                                        <label>
                                            <strong>NIF:</strong>
                                        </label>
                                        <label>
                                            <%# DataBinder.Eval(Container.DataItem,"NIF") %>
                                        </label>

                                        <label style="padding-left: 15px;">
                                            <strong>País:</strong>
                                        </label>
                                        <label>
                                            <%# DataBinder.Eval(Container.DataItem,"Pais") %>
                                        </label>
                                        <br />
                                        <label>
                                            <strong>Provincia:</strong>
                                        </label>
                                        <label style="padding-right: 5px;">
                                            <%# DataBinder.Eval(Container.DataItem,"Provincia") %>
                                        </label>

                                        <label>
                                            <strong>Localidad:</strong>
                                        </label>
                                        <label style="padding-right: 5px;">
                                            <%# DataBinder.Eval(Container.DataItem,"Localidad") %>
                                        </label>

                                        <label>
                                            <strong>Código Postal:</strong>
                                        </label>
                                        <label>
                                            <%# DataBinder.Eval(Container.DataItem,"CodPostal") %>
                                        </label>
                                        <br />
                                        <label>
                                            <strong>Dirección:</strong>
                                        </label>
                                        <label>
                                            <%# DataBinder.Eval(Container.DataItem,"Direccion") %>
                                        </label>
                                        <br />
                                        <label>
                                            <strong>Teléfono Fijo:</strong>
                                        </label>
                                        <label style="padding-right: 10px;">
                                            <%# DataBinder.Eval(Container.DataItem,"TelefonoFija") %>
                                        </label>

                                        <label>
                                            <strong>Teléfono Movil:</strong>
                                        </label>
                                        <label style="padding-right: 10px;">
                                            <%# DataBinder.Eval(Container.DataItem,"TelefonoMovil") %>
                                        </label>
                                        <br />
                                        <label>
                                            <strong>Email:</strong>
                                        </label>
                                        <label>
                                            <%# DataBinder.Eval(Container.DataItem,"EMail") %>
                                        </label>
                                        <br />
                                        <input id="Button1" data-toggle="modal" data-target="#myModal2" class="btn btn-success" type="button" value="Añadir Ruta" />
                                        <asp:HiddenField ID="HiddenFieldAlt" Value='<%# DataBinder.Eval(Container.DataItem,"IdPasajero") %>' runat="server" />
                                        <asp:Button ID="btnEditar" CssClass="btn  btn-warning" CommandArgument='<%# DataBinder.Eval(Container.DataItem,"IdPasajero") %>' OnCommand="btnEditar_Command" runat="server" Text="Editar" />
                                        <asp:Button ID="btnEliminar" CssClass="btn btn-danger" CommandArgument='<%# DataBinder.Eval(Container.DataItem,"IdPasajero") %>' OnCommand="btnEliminar_Command" runat="server" Text="Eliminar" />
                                        <br />
                                        <!-- Modal -->
                                        <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                                        <h4 class="modal-title" id="myModalLabel">Añadir Ruta - Pasajero: '<%# DataBinder.Eval(Container.DataItem,"Nombre") %>'</h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <label>
                                                            Rutas
                                                        </label>
                                                        <asp:DropDownList ID="cbAutocarRuta2"  CssClass="form-control"  OnSelectedIndexChanged="cbAutocarRuta1_SelectedIndexChanged" AutoPostBack="true"  runat="server"></asp:DropDownList>
                                                        <br />
                                      
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                                                        <asp:Button ID="btnAniadirRuta" CssClass="btn btn-primary" CommandArgument='<%# DataBinder.Eval(Container.DataItem,"IdPasajero") %>' runat="server" OnClick="btnAniadirRuta_Click" Text="Guardar Cambios" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </AlternatingItemTemplate>
                                    <AlternatingItemStyle CssClass="alert adjusted alert-info fade in" />
                                    <ItemStyle Width="100%" CssClass="alert  adjusted  alert-warning fade in" />
                                </asp:DataList>
                            </asp:Panel>

                        </fieldset>
                    </div>
                </div>
            </div>
        </article>
    </div>

</asp:Content>
