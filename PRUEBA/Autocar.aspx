<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Autocar.aspx.cs" Inherits="GEST_BUS.Autocar" %>

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
								Añadir Autocares
                            </span>
                </h1>
            </div>
        </div>

        <article class="col-sm-12 col-md-12 col-lg-6">
            <!-- Widget ID (each widget will need unique ID)-->
            <div class="jarviswidget jarviswidget-color-greenLight" id="wid-id-0" data-widget-colorbutton="false" data-widget-deletebutton="false" data-widget-fullscreenbutton="false" data-widget-editbutton="false">
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
                    <span class="widget-icon"><i class="fa fa-form"></i></span>
                    <h2>Añadir Autocar</h2>

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
                                <label class="col-md-2 control-label">Matricula</label>
                                <div class="col-md-10">
                                    <asp:TextBox ID="txtMatricula" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>

                            </div>
                            <br />
                            <br />
                            <div class="form-group">
                                <label class="col-md-2 control-label">Marca</label>
                                <div class="col-md-10">
                                    <asp:DropDownList ID="cbMarca" CssClass="form-control" runat="server"></asp:DropDownList>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="form-group">
                                <label class="col-md-2 control-label">Modelo</label>
                                <div class="col-md-10">
                                    <asp:TextBox ID="txtModelo" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="form-group">
                                <label class="col-md-2 control-label">No Poliza</label>
                                <div class="col-md-10">
                                    <asp:TextBox ID="txtNumPolizaSeguro"  CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="form-group">
                                <label class="col-md-2 control-label">Aseguradora</label>
                                <div class="col-md-10">
                                    <asp:TextBox ID="txtAseguradora" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="text-align-right">
                                <asp:Button ID="btnLimpiar" runat="server" CssClass="btn btn-warning" Text="Limpiar" />
                                <asp:Button ID="btnGuardar" runat="server" CssClass="btn btn-primary" OnClick="btnGuardar_Click" Text="Guardar" />
                            </div>

                        </fieldset>
                    </div>
                </div>
            </div>
        </article>
        <article class="col-sm-12 col-md-12 col-lg-6">
            <div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-1" data-widget-colorbutton="false" data-widget-deletebutton="false" data-widget-fullscreenbutton="false" data-widget-editbutton="false">
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
                    <span class="widget-icon"><i class="fa fa-bus"></i></span>
                    <h2>Listado de Autocares</h2>

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
                             <legend>Introduzca un autocar a buscar</legend>
                            <table>
                                <tr>
                                    <td style="width: 100%">
                                        <asp:TextBox ID="txtBuscar" CssClass="form-control" Width="100%" runat="server"></asp:TextBox></td>
                                    <td>
                                        <asp:Button ID="btnBuscar" CssClass="btn btn-success" OnClick="btnBuscar_Click" runat="server" Text="Buscar" /></td>
                                </tr>

                            </table>
                            <br />
                            <hr />
                            <telerik:RadGrid ID="RadGrid1" Skin="Metro"  MasterTableView-DataKeyNames="IdAutocar" AutoGenerateColumns="false"  runat="server">
                                <MasterTableView>
                                    <Columns>
                                        <telerik:GridTemplateColumn>
                                            <ItemTemplate>
                                                <asp:ImageButton ID="ImageButton1" OnClick="ImageButton1_Click" CommandArgument='<%# DataBinder.Eval(Container.DataItem,"IdAutocar") %>' Width="20px" ImageUrl="~/img/edit.png" runat="server" />
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                        <telerik:GridTemplateColumn>
                                            <ItemTemplate>
                                                <asp:ImageButton ID="delete" OnClick="delete_Click" CommandArgument='<%# DataBinder.Eval(Container.DataItem,"IdAutocar") %>' Width="20px" ImageUrl="~/img/delete.png" runat="server" />
                                            </ItemTemplate>
                                        </telerik:GridTemplateColumn>
                                        <telerik:GridBoundColumn DataField="Marca" HeaderText="Marca"> </telerik:GridBoundColumn>
                                         <telerik:GridBoundColumn DataField="Modelo" HeaderText="Modelo"> </telerik:GridBoundColumn>
                                         <telerik:GridBoundColumn DataField="Matricula" HeaderText="Matricula"> </telerik:GridBoundColumn>
                                         <telerik:GridBoundColumn DataField="NumPolizaSeguro" HeaderText="Nº de Poliza"> </telerik:GridBoundColumn>
                                         <telerik:GridBoundColumn DataField="Aseguradora" HeaderText="Aseguradora"> </telerik:GridBoundColumn>

                                    </Columns>
                                </MasterTableView>
                            </telerik:RadGrid>
                        </fieldset>
                    </div>
                </div>
            </div>
        </article>
    </div>
</asp:Content>
