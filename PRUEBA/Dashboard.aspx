<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="GEST_BUS.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadScriptManager runat="server" ID="RadScriptManager1" />
    <div id="content">

        <!-- row -->
        <div class="row">

            <!-- col -->
            <div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
                <h1 class="page-title txt-color-blueDark">
                    <!-- PAGE HEADER -->
                    <i class="fa-fw fa fa-home"></i>Página de Inicio <span>>
							Timeline </span></h1>
            </div>
            <!-- end col -->



        </div>
        <!-- end row -->

        <!-- row -->
        <div class="row">

            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <!-- Inicio Timeline Content -->
                <asp:Timer ID="Timer1" runat="server" Interval="10000" OnTick="Timer1_Tick"></asp:Timer>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <telerik:RadListBox ID="RadListBox1" runat="server">
                            <ItemTemplate>
                                
                                <%--<div class="smart-timeline-time">
                                    <label style="padding-right: 20px;">
                                        <%# DataBinder.Eval(Container.DataItem,"fecha") %>
                                    </label>
                                </div>
                                <div>
                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/timeline.png" />
                                </div>
                                <div class="smart-timeline-content">
                                    <label style="padding-right: 20px;">
                                        <%# DataBinder.Eval(Container.DataItem,"Nombre") %>
                                    </label>
                                    </br>
                                    <label style="padding-right: 20px; margin-left: 30px">
                                        <%# DataBinder.Eval(Container.DataItem,"NombreEstado") %>
                                    </label>
                                </div>--%>
                                <div class="smart-timeline">
                                    <ul class="smart-timeline-list">
                                        <li>
                                            <div class="smart-timeline-icon">
                                                <span class="fa fa-car"></span>
                                            </div>
                                            <div class="smart-timeline-time">
                                                <small><%# DataBinder.Eval(Container.DataItem,"fecha") %></small>
                                            </div>
                                            <div class="smart-timeline-content">
                                                <label style="padding-right: 20px;">
                                                    <%# DataBinder.Eval(Container.DataItem,"Nombre") %> 
                                                </label>
                                                </br>
                                                <label style="padding-right: 20px;">
                                                    El Conductor: <%# DataBinder.Eval(Container.DataItem,"NombreUsuario") %> con Autobus: <%# DataBinder.Eval(Container.DataItem,"Matricula") %>
                                                </label>
                                                </br>
                                                <label style="padding-right: 20px;">
                                                   Aztualizó su estado a: <%# DataBinder.Eval(Container.DataItem,"NombreEstado") %>
                                                </label>
                                            </div>
                                        </li>
                                    </ul>
                                </div>

                            </ItemTemplate>
                        </telerik:RadListBox>

                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick"></asp:AsyncPostBackTrigger>
                    </Triggers>
                </asp:UpdatePanel>



                <!-- END Timeline Content -->


            </div>

        </div>

        <!-- end row -->

    </div>
    <!-- END MAIN CONTENT -->

</asp:Content>
