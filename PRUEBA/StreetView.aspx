<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="StreetView.aspx.cs" Inherits="GEST_BUS.StreetView" %>

<%@ Register Assembly="GMaps" Namespace="Subgurim.Controles" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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

        <article class="col-sm-12 col-md-12 col-lg-12">
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
                    <span class="widget-icon"><i class="fa fa-map-marker"></i></span>
                    <h2>Street View</h2>

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
                            <div class="form-group">
                                <table style="width:100%;">
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtLugar" CssClass="form-control"  runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Button ID="btnIr" CssClass="btn btn-success" OnClick="btnIr_Click" runat="server" Text="Ir" />
                                        </td>
                                    </tr>
                                </table>


                            </div>

                            <cc1:GStreetviewPanorama ID="GStreetviewPanorama1" Width="100%" Height="600px" runat="server" />
                        </fieldset>
                    </div>
                </div>
            </div>
        </article>
    </div>

</asp:Content>
