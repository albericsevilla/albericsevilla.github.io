<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Conductores.aspx.cs" Inherits="GEST_BUS.Conductores" %>
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
								Añadir Conductores
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
                    <h2>Añadir Conductores</h2>

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
                                    <asp:TextBox ID="txtEmail"  CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <br />
                            <br />
                            <div class="form-group">
                                <label class="col-md-2 control-label">Password</label>
                                <div class="col-md-10">
                                    <asp:TextBox ID="txtPassword"  TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <br />
                            <br />
                            <div class="form-group">
                                <label class="col-md-2 control-label">Cuenta Twitter</label>
                                <div class="col-md-10">
                                    <asp:TextBox ID="txtCuentaTwitter" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <br />
                            <br />
                            <div class="form-group">
                                <label class="col-md-2 control-label">Cuenta Facebook</label>
                                <div class="col-md-10">
                                    <asp:TextBox ID="txtCuentaFacebook" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <br />
                            <br />
            <div class="form-group">
                                <label class="col-md-2 control-label">Admin</label>
                                <div class="col-md-10">
                                    <asp:CheckBox ID="checkAdmin" CssClass="toggle" runat="server" />
                                </div>
                            </div>

                            <br />
                            <br />
                            <div class="text-align-right">
                                <asp:Button ID="btnLimpiar" runat="server" CssClass="btn btn-warning" OnClick="btnLimpiar_Click" rel="tooltip" data-placement="left" data-original-title="<i class='fa fa-check text-success'></i> Este botón limpia el formulario para que puedas añadir un nuevo registro." data-html="true" Text="Nuevo Registro" />
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
                    <h2>Editar / Eliminar Conductores</h2>

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
                            <legend>Introduzca un conductor a buscar</legend>
                            <table>
                                <tr>
                                    <td style="width: 100%">
                                        <asp:TextBox ID="txtBuscar" CssClass="form-control" Width="100%" runat="server"></asp:TextBox></td>
                                    <td>
                                        <asp:Button ID="btnBuscar" CssClass="btn btn-success" OnClick="btnBuscar_Click"  runat="server" Text="Buscar" /></td>
                                </tr>

                            </table>

                            <br />

                            <asp:Panel ID="Panel1" ScrollBars="Auto" runat="server">
                                <asp:DataList ID="DataList1" DataKeyField="IdUsuario" runat="server">
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
                                        <asp:Button ID="btnEditar" CssClass="btn  btn-warning" CommandArgument='<%# DataBinder.Eval(Container.DataItem,"IdUsuario") %>' OnClick="btnEditar_Click"  runat="server" Text="Editar" />
                                        <asp:Button ID="btnEliminar" CssClass="btn btn-danger" CommandArgument='<%# DataBinder.Eval(Container.DataItem,"IdUsuario") %>'  OnClick="btnEliminar_Click" runat="server" Text="Eliminar" />
                                        <br />
                                       
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
                                       
                                        <asp:Button ID="btnEditar" CssClass="btn  btn-warning" CommandArgument='<%# DataBinder.Eval(Container.DataItem,"IdUsuario") %>' OnClick="btnEditar_Click"  runat="server" Text="Editar" />
                                        <asp:Button ID="btnEliminar" CssClass="btn btn-danger" CommandArgument='<%# DataBinder.Eval(Container.DataItem,"IdUsuario") %>' OnClick="btnEliminar_Click"  runat="server" Text="Eliminar" />
                                        <br />
                                       
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
