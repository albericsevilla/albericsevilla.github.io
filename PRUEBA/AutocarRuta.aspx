<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AutocarRuta.aspx.cs" Inherits="GEST_BUS.AutocarRuta" %>

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
								Añadir Autocar - ruta
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
                    <h2>Añadir Autocar - Ruta</h2>

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
                            <legend>Autocar - Ruta</legend>
                            <br />
                            <div class="form-group">
                                <label class="col-lg-2">
                                    Fecha y hora
                                </label>
                                <div class="col-lg-10">
                                    <telerik:RadDateTimePicker ID="datePickerFecha" Skin="Metro" runat="server"></telerik:RadDateTimePicker>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="form-group">
                                <label class="col-lg-2">
                                    Autocar
                                </label>
                                <div class="col-lg-10">
                                    <asp:DropDownList ID="cbAutocar" CssClass="form-control" runat="server"></asp:DropDownList>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="form-group">
                                <label class="col-lg-2">
                                    Ruta
                                </label>
                                <div class="col-lg-10">
                                    <asp:DropDownList ID="cbRuta" CssClass="form-control" runat="server"></asp:DropDownList>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="form-group">
                                <label class="col-lg-2">
                                    Conductor
                                </label>
                                <div class="col-lg-10">
                                    <asp:DropDownList ID="cbConductor" CssClass="form-control" runat="server"></asp:DropDownList>
                                </div>
                            </div>
                            <br />
                            <br />
                            <div class="pull-right">
                                <asp:Button ID="btnLimpiar" runat="server" CssClass="btn btn-warning" OnClick="btnLimpiar_Click" Text="Nuevo Registro" rel="tooltip" data-placement="left" data-original-title="<i class='fa fa-check text-success'></i> Este botón limpia el formulario para que puedas añadir un nuevo registro." data-html="true" />
                                <asp:Button ID="btnGuardar" CssClass="btn btn-primary" OnClick="btnGuardar_Click" runat="server" Text="Guardar" />
                            </div>
                        </fieldset>
                        <br />

                    </div>
                </div>
            </div>
        </article>
        <article class="col-sm-12 col-md-12 col-lg-6">
            <!-- Widget ID (each widget will need unique ID)-->
            <div class="jarviswidget jarviswidget-color-greenLight" id="wid-id-1" data-widget-colorbutton="false" data-widget-deletebutton="false" data-widget-fullscreenbutton="false" data-widget-editbutton="false">
                <header>
                    <span class="widget-icon"><i class="fa fa-form"></i></span>
                    <h2>Lista Autocar - Ruta</h2>
                </header>
                <telerik:RadGrid ID="gridAutocarRuta" Width="100%" AutoGenerateColumns="false" Skin="Metro" runat="server">
                    <MasterTableView>
                        <Columns>
                            <telerik:GridTemplateColumn>
                                <ItemTemplate>
                                    <asp:ImageButton ID="Editar"  OnClick="Editar_Click"  CommandArgument='<%# DataBinder.Eval(Container.DataItem,"IdAutocarRuta") %>' Width="20px" ImageUrl="~/img/edit.png" runat="server" />
                                </ItemTemplate>
                            </telerik:GridTemplateColumn>
                            <telerik:GridTemplateColumn>
                                <ItemTemplate>
                                    <asp:ImageButton ID="Borrar"  OnClick="Borrar_Click"  CommandArgument='<%# DataBinder.Eval(Container.DataItem,"IdAutocarRuta") %>' Width="20px" ImageUrl="~/img/delete.png" runat="server" />
                                </ItemTemplate>
                            </telerik:GridTemplateColumn>
                            <telerik:GridBoundColumn HeaderText="Fecha" DataField="Fecha"></telerik:GridBoundColumn>
                            <telerik:GridBoundColumn HeaderText="Nombre" DataField="Nombre"></telerik:GridBoundColumn>
                            <telerik:GridBoundColumn HeaderText="Conductor" DataField="Conductor"></telerik:GridBoundColumn>
                            <telerik:GridBoundColumn HeaderText="Marca" DataField="Marca"></telerik:GridBoundColumn>
                            <telerik:GridBoundColumn HeaderText="Modelo" DataField="Modelo"></telerik:GridBoundColumn>
                            <telerik:GridBoundColumn HeaderText="Matricula" DataField="Matricula"></telerik:GridBoundColumn>
                        </Columns>
                    </MasterTableView>
                </telerik:RadGrid>
            </div>
        </article>
    </div>

</asp:Content>
