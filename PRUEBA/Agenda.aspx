<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Agenda.aspx.cs" Inherits="GEST_BUS.Agenda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
    </telerik:RadAjaxManager>
    <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server">
    </telerik:RadStyleSheetManager>
    <telerik:RadScriptManager ID="ScriptManager1" runat="server" EnableTheming="True">
        <Scripts>
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js"></asp:ScriptReference>
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js"></asp:ScriptReference>
            <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js"></asp:ScriptReference>
        </Scripts>
    </telerik:RadScriptManager>

    <div id="content">

        <div class="row">
            <div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
                <h1 class="page-title txt-color-blueDark"><i class="fa fa-calendar fa-fw "></i>
                    Agenda
                                               <span>>
                                               Añadir Eventos
                            </span>
                </h1>
            </div>
            <div class="col-xs-12 col-sm-5 col-md-5 col-lg-8">
            </div>
        </div>
        <!-- row -->
        <div class="row">

            <div class="col-sm-12 col-md-12 col-lg-3">
                <!-- new widget -->
                <div class="jarviswidget jarviswidget-color-blueDark">
                    <header>
                        <h2>Añadir Eventos</h2>
                    </header>

                    <!-- widget div-->
                    <div>

                        <div class="widget-body">
                            <!-- content goes here -->

                            <form id="add-event-form">
                                <fieldset>



                                    <div class="form-group">
                                        <label>Título del evento</label>
                                        <asp:TextBox ID="txtTituloEvento" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label>Descripción</label>
                                        <asp:TextBox ID="txtDescripcion" runat="server" CssClass="form-control" placeholder="Descripción" rows="3" maxlength="140"></asp:TextBox>
                                        <p class="note">Máximo 120 carácteres.</p>
                                    </div>
                                    <div class="form-group">
                                        <label>Fecha Desde: </label>
                                        <telerik:RadDateTimePicker ID="datFechaDesde" Skin="MetroTouch" runat="server"></telerik:RadDateTimePicker>
                                    </div>
                                     <div class="form-group">
                                        <label>Fecha Hasta: </label>
                                        <telerik:RadDateTimePicker ID="datFechaHasta" Skin="MetroTouch" runat="server"></telerik:RadDateTimePicker>
                                    </div>
                                    <div class="form-group">
                                        <label>Seleccionar color:</label>
                                        <%--AutoPostBack="true"--%>
                                        <%--<telerik:RadColorPicker ID="RadColorPicker1" runat="server" Height="300px" PaletteModes="HSV" ShowIcon="true" Width="300px"></telerik:RadColorPicker>--%>
                                        <div class="btn-group btn-group-justified btn-select-tick" data-toggle="buttons">
                                            <label class="btn bg-color-darken active">
                                                <asp:RadioButton ID="RadioButton1" CssClass="bg-color-darken txt-color-white" runat="server" />
                                                <%--<input type="radio" name="priority" id="option1" value="bg-color-darken txt-color-white" checked>--%>
                                                <i class="fa fa-check txt-color-white"></i>
                                            </label>
                                            <label class="btn bg-color-blue">
                                                <asp:RadioButton ID="Azul" CssClass="bg-color-blue txt-color-white" runat="server" />
                                                <i class="fa fa-check txt-color-white"></i>
                                            </label>
                                            <label class="btn bg-color-orange">
                                                <asp:RadioButton ID="Naranja" CssClass="bg-color-orange txt-color-white" runat="server" />
                                                <i class="fa fa-check txt-color-white"></i>
                                            </label>
                                            <label class="btn bg-color-greenLight">
                                                <asp:RadioButton ID="Verde" CssClass="bg-color-greenLight txt-color-white" runat="server" />
                                                <i class="fa fa-check txt-color-white"></i>
                                            </label>
                                            <label class="btn bg-color-blueLight">
                                                <asp:RadioButton ID="AzulLight" CssClass="bg-color-blueLight txt-color-white" runat="server" />
                                                <i class="fa fa-check txt-color-white"></i>
                                            </label>
                                            <label class="btn bg-color-red">
                                                <asp:RadioButton ID="Rojo" CssClass="bg-color-red txt-color-white" runat="server" />
                                                <i class="fa fa-check txt-color-white"></i>
                                            </label>
                                        </div>
                                    </div>

                                </fieldset>
                                <div class="form-actions">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <asp:Button ID="btnNoEditar" runat="server" Text="Dejar de editar" CssClass="btn btn-default" Visible="false" OnClick="btnNoEditar_Click" />
                                            <asp:Button ID="btnGuardarEvento" runat="server" CssClass="btn btn-default" OnClick="btnGuardarEvento_Click" Text="Guardar nuevo evento" />
                                            <asp:HiddenField ID="hiddenTipoEvento" Value="0" runat="server" />

                                        </div>
                                    </div>
                                </div>
                            </form>

                            <!-- end content -->
                        </div>

                    </div>
                    <!-- end widget div -->
                </div>
                <!-- end widget -->

            </div>
            <div class="col-sm-12 col-md-12 col-lg-9">

                <!-- new widget -->
                <div class="jarviswidget jarviswidget-color-blueDark">

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
                        <span class="widget-icon"><i class="fa fa-calendar"></i></span>
                        <h2>Mi Agenda </h2>
                        <div class="widget-toolbar">
                            <!-- add: non-hidden - to disable auto hide -->
                        </div>
                    </header>

                    <!-- widget div-->
                    <div>

                        <div class="widget-body no-padding">
                            <!-- content goes here -->
                            <div class="widget-body-toolbar">

                            
                            </div>
                            <%--<div id="calendar"></div>--%>
                            <telerik:RadScheduler ID="RadScheduler1" OnAppointmentDataBound="RadScheduler1_AppointmentDataBound" Skin="MetroTouch" Width="100%" Height="100%" AllowInsert="false" AllowEdit="false" AgendaView-ReadOnly="true" AdvancedForm-Enabled="false"  StartInsertingInAdvancedForm="false" StartEditingInAdvancedForm="false" FirstDayOfWeek="Monday" LastDayOfWeek="Sunday" runat="server" Culture="es-ES" RowHeight="32px" OnAppointmentClick="RadScheduler1_AppointmentClick" OnAppointmentDelete="RadScheduler1_AppointmentDelete" SelectedView="MonthView" TimeZoneID="Romance Standard Time" TimeZoneOffset="01:00:00" OverflowBehavior="Auto">
                                <ExportSettings FileName="ExportarAgenda" OpenInNewWindow="True">
                                    <Pdf PageTopMargin="1in" PageBottomMargin="1in" PageLeftMargin="1in" PageRightMargin="1in" AllowAdd="True" AllowCopy="True" AllowModify="True"></Pdf>
                                </ExportSettings>
                                
                                
                                <AgendaView UserSelectable="true" />
                                <TimelineView UserSelectable="false" />
                                <AdvancedForm Modal="true"></AdvancedForm>
                                <WeekView UserSelectable="false" />
                                <DayView UserSelectable="false" />
                                <MultiDayView UserSelectable="false" />
                                <MonthView UserSelectable="false" />

                                <ResourceStyles>
                                <%--AppointmentStyleMode must be explicitly set to Default (see above) otherwise setting BackColor/BorderColor (="#abd962")
                                   will switch the appointments to Simple rendering (no rounded corners and gradients)--%>
                                    <telerik:ResourceStyleMapping Type="Calendar" Text="color1" ApplyCssClass="bg-color-darken txt-color-white" />
                                    <telerik:ResourceStyleMapping Type="Calendar" Text="color1" ApplyCssClass="bg-color-blue txt-color-white" />
                                    <telerik:ResourceStyleMapping Type="Calendar" Text="color2" ApplyCssClass ="bg-color-orange txt-color-white" />
                                    <telerik:ResourceStyleMapping Type="Calendar" Text="color3" ApplyCssClass ="bg-color-greenLight txt-color-white" />
                                    <telerik:ResourceStyleMapping Type="Calendar" Text="color4" ApplyCssClass ="bg-color-blueLight txt-color-white" />
                                    <telerik:ResourceStyleMapping Type="Calendar" Text="color5" ApplyCssClass ="bg-color-red txt-color-white" />
                                </ResourceStyles>


                                <Localization AdvancedNewAppointment="Nuevo Apunte" AdvancedSubject="Asunto" HeaderDay="Día" HeaderMonth="Mes" HeaderTimeline="Línea de Tiempo" HeaderToday="Hoy" HeaderWeek="Semana" Save="Guardar" Show24Hours="Mostrar 24 Horas" />
                                <AppointmentContextMenuSettings EnableDefault="false" />
                                <TimeSlotContextMenuSettings EnableDefault="true" />
                            </telerik:RadScheduler>
                            <!-- end content -->
                        </div>
                        
                    </div>
                    <!-- end widget div -->
                    <asp:TextBox ID="PanelInformativo" Text="notificaciones" runat="server"></asp:TextBox>
                </div>
                <!-- end widget -->

            </div>

        </div>

        <!-- end row -->

    </div>
</asp:Content>
