<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="GEST_BUS.Index" %>

<%@ Register Assembly="GMaps" Namespace="Subgurim.Controles" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <telerik:RadScriptManager ID="RadScriptManager1" runat="server"></telerik:RadScriptManager>
    <!-- MAIN CONTENT -->
    <div id="content">

        <div class="row">
            <div class="col-xs-12 col-sm-7 col-md-7 col-lg-4">
                <h1 class="page-title txt-color-blueDark"><i class="fa fa-map-marker fa-fw "></i>Inicio <span>>
							Widget </span></h1>
            </div>
          
        </div>

        <!-- widget grid -->
        <section id="widget-grid" class="">

            <!-- row -->

            <div class="row">

                <!-- NEW WIDGET START -->
                <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">

                    <!-- Widget ID (each widget will need unique ID)-->
                    <div class="jarviswidget jarviswidget-color-white" id="wid-id-0" data-widget-editbutton="false" data-widget-deletebutton="false" data-widget-fullscreenbutton="false">
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
                            <h2>Google Map</h2>
                        </header>

                        <!-- widget div-->
                        <div>

                            <!-- widget edit box -->
                            <div class="jarviswidget-editbox">
                                <!-- This area used as dropdown edit box -->

                            </div>
                            <!-- end widget edit box -->

                            <!-- widget content -->
                            <div class="widget-body no-padding">
                                <%--<cc1:GEarthMap ID="GEarthMap1" Width="100%" enableContinuousZoom="true"
                                     enableDragging="true" enableGoogleBar="true" enableRotation="true"  runat="server" />--%>
                                <asp:Timer ID="Timer1" runat="server" Interval="10000" OnTick="Timer1_Tick"></asp:Timer>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <cc1:GMap ID="GMap1" Width="100%"  runat="server" />

                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick"></asp:AsyncPostBackTrigger>
                                    </Triggers>
                                </asp:UpdatePanel>
                            </div>
                            <!-- end widget content -->

                        </div>
                        <!-- end widget div -->

                    </div>
                    <!-- end widget -->

                </article>
                <!-- WIDGET END -->

            </div>

            <!-- end row -->
            <div class="row">
                 <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <!-- Widget ID (each widget will need unique ID)-->
                    <div class="jarviswidget jarviswidget-color-white" id="wid-id-1" data-widget-editbutton="false" data-widget-deletebutton="false" data-widget-fullscreenbutton="false">
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
                            <h2>Usuarios</h2>
                        </header>

                        <!-- widget div-->
                        <div>

                            <!-- widget edit box -->
                            <div class="jarviswidget-editbox">
                                <!-- This area used as dropdown edit box -->

                            </div>
                            <!-- end widget edit box -->

                            <!-- widget content -->
                            <div class="widget-body no-padding">

                                <telerik:RadGrid ID="gridUsuarios" Skin="Metro" Width="100%" AutoGenerateColumns="false"  runat="server">
                                    <MasterTableView>
                                        <Columns>
                                            <telerik:GridBoundColumn HeaderText="Nombre" DataField="Nombre"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn HeaderText="NIF" DataField="NIF"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn HeaderText="Pais" DataField="Pais"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn HeaderText="Provincia" DataField="Provincia"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn HeaderText="Localidad" DataField="Localidad"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn HeaderText="Código Postal" DataField="CodPostal"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn HeaderText="Dirección" DataField="Direccion"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn HeaderText="Teléfono Fijo" DataField="TelefonoFija"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn HeaderText="Teléfono Movil" DataField="TelefonoMovil"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn HeaderText="Email" DataField="Email"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn HeaderText="Twitter" DataField="CuentaTwitter"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn HeaderText="Facebook" DataField="CuentaFacebook"></telerik:GridBoundColumn>

                                        </Columns>
                                    </MasterTableView>
                                </telerik:RadGrid>

                            </div>
                            <!-- end widget content -->

                        </div>
                        <!-- end widget div -->

                    </div>
                    <!-- end widget -->
                 </article>
            </div>
            <div class="row">
                <article class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                               <!-- Widget ID (each widget will need unique ID)-->
                    <div class="jarviswidget jarviswidget-color-teal" id="wid-id-7" data-widget-editbutton="false" data-widget-deletebutton="false" data-widget-fullscreenbutton="false">

                        <header>
                            <span class="widget-icon"><i class="fa fa-users"></i></span>
                            <h2>Pasajeros </h2>

                        </header>

                        <div>


                            <div class="jarviswidget-editbox">
                            </div>

                            <div class="widget-body no-padding">

                                <telerik:RadGrid ID="gridPasajeros" runat="server"></telerik:RadGrid>


                            </div>


                        </div>


                    </div>
                    <!-- end widget -->
                </article>
            </div>
            <!-- row -->

            <div class="row">
                <!-- NEW WIDGET START -->
                <article class="col-xs-12 col-sm-6 col-md-6 col-lg-6">

                <!-- Widget ID (each widget will need unique ID)-->
                    <div class="jarviswidget jarviswidget-color-blueDark" id="wid-id-3" data-widget-editbutton="false" data-widget-deletebutton="false" data-widget-fullscreenbutton="false">
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
                            <h2>Rutas</h2>

                        </header>

                        <!-- widget div-->
                        <div>

                            <!-- widget edit box -->
                            <div class="jarviswidget-editbox">
                                <!-- This area used as dropdown edit box -->

                            </div>
                            <!-- end widget edit box -->

                            <!-- widget content -->
                            <div class="widget-body no-padding">

                                <telerik:RadGrid ID="gridRutas" AutoGenerateColumns="false" runat="server">
                                    <MasterTableView>
                                        <Columns>
                                            <telerik:GridBoundColumn HeaderText="Nombre"  DataField="Nombre"></telerik:GridBoundColumn>
                                        </Columns>
                                    </MasterTableView>
                                </telerik:RadGrid>


                            </div>
                            <!-- end widget content -->

                        </div>
                        <!-- end widget div -->

                    </div>
                    <!-- end widget -->
                      
                </article>
                <!-- WIDGET END -->


                <!-- NEW WIDGET START -->
                <article class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                     <div class="jarviswidget jarviswidget-color-yellow" id="wid-id-5" data-widget-editbutton="false" data-widget-deletebutton="false" data-widget-fullscreenbutton="false">
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
                            <span class="widget-icon"><i class="fa fa-car"></i></span>
                            <h2>Autocares </h2>

                        </header>

                        <!-- widget div-->
                        <div>

                            <!-- widget edit box -->
                            <div class="jarviswidget-editbox">
                                <!-- This area used as dropdown edit box -->

                            </div>
                            <!-- end widget edit box -->

                            <!-- widget content -->
                            <div class="widget-body no-padding">

                                <telerik:RadGrid ID="gridAutocares" AutoGenerateColumns="false" runat="server">
                                    <MasterTableView>
                                        <Columns>
                                            <telerik:GridBoundColumn HeaderText="Matricula" DataField="Matricula"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn HeaderText="Marca" DataField="Marca"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn HeaderText="Modelo" DataField="Modelo"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn HeaderText="No Poliza" DataField="NumPolizaSeguro"></telerik:GridBoundColumn>
                                            <telerik:GridBoundColumn HeaderText="Aseguradora" DataField="Aseguradora"></telerik:GridBoundColumn>

                                        </Columns>
                                    </MasterTableView>
                                </telerik:RadGrid>


                            </div>
                            <!-- end widget content -->

                        </div>
                        <!-- end widget div -->

                    </div>
                    </article>
                  </div>
            <!-- end row -->
        </section>
        <!-- end widget grid -->

    </div>
    <!-- END MAIN CONTENT -->
    <script>
        $(document).ready(function () {

            pageSetUp();

            var pagefunction = function () {

                /*jslint smarttabs:true */
                var colorful_style = [{

                    "featureType": "landscape",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "transit",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "poi.park",
                    "elementType": "labels",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "poi.park",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "color": "#d3d3d3"
                    }, {
                        "visibility": "on"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "geometry.stroke",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "landscape",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#b1bc39"
                    }]
                }, {
                    "featureType": "landscape.man_made",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#ebad02"
                    }]
                }, {
                    "featureType": "water",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#416d9f"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "labels.text.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#000000"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "labels.text.stroke",
                    "stylers": [{
                        "visibility": "off"
                    }, {
                        "color": "#ffffff"
                    }]
                }, {
                    "featureType": "administrative",
                    "elementType": "labels.text.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#000000"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#ffffff"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "labels.icon",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "water",
                    "elementType": "labels",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "poi",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "color": "#ebad02"
                    }]
                }, {
                    "featureType": "poi.park",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "color": "#8ca83c"
                    }]
                }];

                // Grey Scale
                var greyscale_style = [{
                    "featureType": "road.highway",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "landscape",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "transit",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "poi",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "poi.park",
                    "stylers": [{
                        "visibility": "on"
                    }]
                }, {
                    "featureType": "poi.park",
                    "elementType": "labels",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "poi.park",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "color": "#d3d3d3"
                    }, {
                        "visibility": "on"
                    }]
                }, {
                    "featureType": "poi.medical",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "poi.medical",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "geometry.stroke",
                    "stylers": [{
                        "color": "#cccccc"
                    }]
                }, {
                    "featureType": "water",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#cecece"
                    }]
                }, {
                    "featureType": "road.local",
                    "elementType": "labels.text.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#808080"
                    }]
                }, {
                    "featureType": "administrative",
                    "elementType": "labels.text.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#808080"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#fdfdfd"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "labels.icon",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "water",
                    "elementType": "labels",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "poi",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "color": "#d2d2d2"
                    }]
                }];

                // Black & White
                var monochrome_style = [{
                    "featureType": "road.highway",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "landscape",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "transit",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "poi.park",
                    "elementType": "labels",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "poi.park",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "color": "#d3d3d3"
                    }, {
                        "visibility": "on"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "geometry.stroke",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "landscape",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#ffffff"
                    }]
                }, {
                    "featureType": "water",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#cecece"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "labels.text.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#000000"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "labels.text.stroke",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#ffffff"
                    }]
                }, {
                    "featureType": "administrative",
                    "elementType": "labels.text.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#000000"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#000000"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "labels.icon",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "water",
                    "elementType": "labels",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "poi",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }];

                // Retro
                var metro_style = [{
                    "featureType": "transit",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "poi.park",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "color": "#d3d3d3"
                    }, {
                        "visibility": "on"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "geometry.stroke",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "landscape",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#eee8ce"
                    }]
                }, {
                    "featureType": "water",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#b8cec9"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "labels.text.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#000000"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "labels.text.stroke",
                    "stylers": [{
                        "visibility": "off"
                    }, {
                        "color": "#ffffff"
                    }]
                }, {
                    "featureType": "administrative",
                    "elementType": "labels.text.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#000000"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#ffffff"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "geometry.stroke",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "labels.icon",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "water",
                    "elementType": "labels",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "poi",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "color": "#d3cdab"
                    }]
                }, {
                    "featureType": "poi.park",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "color": "#ced09d"
                    }]
                }, {
                    "featureType": "poi",
                    "elementType": "labels",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }];

                // Night
                var nightvision_style = [{
                    "featureType": "landscape",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "transit",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "poi.park",
                    "elementType": "labels",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "poi.park",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "color": "#d3d3d3"
                    }, {
                        "visibility": "on"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "geometry.stroke",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "landscape",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "hue": "#0008ff"
                    }, {
                        "lightness": -75
                    }, {
                        "saturation": 10
                    }]
                }, {
                    "elementType": "geometry.stroke",
                    "stylers": [{
                        "color": "#1f1d45"
                    }]
                }, {
                    "featureType": "landscape.natural",
                    "stylers": [{
                        "color": "#1f1d45"
                    }]
                }, {
                    "featureType": "water",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#01001f"
                    }]
                }, {
                    "elementType": "labels.text.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#e7e8ec"
                    }]
                }, {
                    "elementType": "labels.text.stroke",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#151348"
                    }]
                }, {
                    "featureType": "administrative",
                    "elementType": "labels.text.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#f7fdd9"
                    }]
                }, {
                    "featureType": "administrative",
                    "elementType": "labels.text.stroke",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#01001f"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#316694"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "labels.icon",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "water",
                    "elementType": "labels",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "poi",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "color": "#1a153d"
                    }]

                }];

                // Night Light
                var nightvision_highlight_style = [{
                    "elementType": "geometry",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "hue": "#232a57"
                    }]
                }, {
                    "featureType": "road.highway",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "landscape",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "hue": "#0033ff"
                    }, {
                        "saturation": 13
                    }, {
                        "lightness": -77
                    }]
                }, {
                    "featureType": "landscape",
                    "elementType": "geometry.stroke",
                    "stylers": [{
                        "color": "#4657ab"
                    }]
                }, {
                    "featureType": "transit",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "geometry.stroke",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "water",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#0d0a1f"
                    }]
                }, {
                    "elementType": "labels.text.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#d2cfe3"
                    }]
                }, {
                    "elementType": "labels.text.stroke",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#0d0a1f"
                    }]
                }, {
                    "featureType": "administrative",
                    "elementType": "labels.text.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#ffffff"
                    }]
                }, {
                    "featureType": "administrative",
                    "elementType": "labels.text.stroke",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#0d0a1f"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#ff9910"
                    }]
                }, {
                    "featureType": "road.local",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#4657ab"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "labels.icon",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "water",
                    "elementType": "labels",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "poi",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "color": "#232a57"
                    }]
                }, {
                    "featureType": "poi.park",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "color": "#232a57"
                    }]
                }, {
                    "featureType": "poi",
                    "elementType": "labels",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }];

                // Papiro
                var old_paper_style = [{
                    "elementType": "geometry",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#f2e48c"
                    }]
                }, {
                    "featureType": "road.highway",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "transit",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "poi.park",
                    "elementType": "labels",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "poi.park",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "color": "#d3d3d3"
                    }, {
                        "visibility": "on"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "geometry.stroke",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "landscape",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#f2e48c"
                    }]
                }, {
                    "featureType": "landscape",
                    "elementType": "geometry.stroke",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#592c00"
                    }]
                }, {
                    "featureType": "water",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#a77637"
                    }]
                }, {
                    "elementType": "labels.text.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#592c00"
                    }]
                }, {
                    "elementType": "labels.text.stroke",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#f2e48c"
                    }]
                }, {
                    "featureType": "administrative",
                    "elementType": "labels.text.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#592c00"
                    }]
                }, {
                    "featureType": "administrative",
                    "elementType": "labels.text.stroke",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#f2e48c"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#a5630f"
                    }]
                }, {
                    "featureType": "road.highway",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "visibility": "on"
                    }, {
                        "color": "#592c00"
                    }]
                }, {
                    "featureType": "road",
                    "elementType": "labels.icon",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "water",
                    "elementType": "labels",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "poi",
                    "elementType": "geometry.fill",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }, {
                    "featureType": "poi",
                    "elementType": "labels",
                    "stylers": [{
                        "visibility": "off"
                    }]
                }];

                // One color - Change the hue value for your desired color
                var mono_color_style = [{
                    "stylers": [{
                        "hue": "#ff00aa"
                    }, {
                        "saturation": 1
                    }, {
                        "lightness": 1
                    }]
                }];

                /*
				 * Google Maps Initialize
				 */



                $this = $("#map_canvas");
                $zoom_level = ($this.data("gmap-zoom") || 5);
                $data_lat = ($this.data("gmap-lat") || 29.895883);
                $data_lng = ($this.data("gmap-lng") || -80.650635);
                $xml_src = ($this.data("gmap-src") || "xml/gmap/pins.xml");

                var greyStyleMap = new google.maps.StyledMapType(greyscale_style, {
                    name: "Greyscale"
                }),
			    monoChromeStyleMap = new google.maps.StyledMapType(monochrome_style, {
			        name: "Mono Chrome"
			    }),
			    metroStyleMap = new google.maps.StyledMapType(metro_style, {
			        name: "Metro"
			    }),
			    nightvisionStyleMap = new google.maps.StyledMapType(nightvision_style, {
			        name: "Nightvision"
			    }),
			    nvisionhstyleMap = new google.maps.StyledMapType(nightvision_highlight_style, {
			        name: "Nightvision Light"
			    }),
			    oPaperStyleMap = new google.maps.StyledMapType(old_paper_style, {
			        name: "Old Paper"
			    }),
			    colorfulStyleMap = new google.maps.StyledMapType(colorful_style, {
			        name: "Colorful"
			    }),
			    monoColorStyleMap = new google.maps.StyledMapType(mono_color_style, {
			        name: "One Color"
			    });

                function demoLoadAttribute() {

                    var centerLatLng = new google.maps.LatLng($data_lat, $data_lng),
			        mapOptions = {
			            zoom: $zoom_level,
			            center: centerLatLng,
			            //disableDefaultUI: true,
			            //mapTypeId : google.maps.MapTypeId.ROADMAP
			            mapTypeControlOptions: {
			                mapTypeIds: [google.maps.MapTypeId.TERRAIN, 'colorful_style', 'greyscale_style',
			                    'monochrome_style', 'metro_style', 'nightvision_style', 'nightvision_highlight_style',
			                    'old_paper_style', 'mono_color_style'
			                ]
			            }
			        },

			        bounds = new google.maps.LatLngBounds(),
			        infowindow = new google.maps.InfoWindow(),
			        map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);

                    map.mapTypes.set('colorful_style', colorfulStyleMap);
                    map.mapTypes.set('greyscale_style', greyStyleMap);
                    map.mapTypes.set('monochrome_style', monoChromeStyleMap);
                    map.mapTypes.set('metro_style', metroStyleMap);
                    map.mapTypes.set('nightvision_style', nightvisionStyleMap);
                    map.mapTypes.set('nightvision_highlight_style', nvisionhstyleMap);
                    map.mapTypes.set('old_paper_style', oPaperStyleMap);
                    map.mapTypes.set('mono_color_style', monoColorStyleMap);

                    //map.setMapTypeId(google.maps.MapTypeId.TERRAIN);
                    map.setMapTypeId('metro_style');

                } // end demoLoadAttribute

                // grey
                function generate_map_1() {

                    var mapOptions = {
                        center: new google.maps.LatLng(41.38155, 2.13752),
                        zoom: 12,
                    };
                    map = new google.maps.Map(document.getElementById('map_canvas1'), mapOptions);

                    // Setup skin for the map
                    map.mapTypes.set('greyscale_style', greyStyleMap);
                    map.setMapTypeId('greyscale_style');

                }

                // colorful
                function generate_map_2() {

                    var mapOptions = {
                        center: new google.maps.LatLng(41.38155, 2.13752),
                        zoom: 12,
                    };
                    map = new google.maps.Map(document.getElementById('map_canvas2'), mapOptions);

                    // Setup skin for the map
                    map.mapTypes.set('colorful_style', colorfulStyleMap);
                    map.setMapTypeId('colorful_style');

                }

                // colorful
                function generate_map_3() {

                    var mapOptions = {
                        center: new google.maps.LatLng(41.38155, 2.13752),
                        zoom: 12,
                    };
                    map = new google.maps.Map(document.getElementById('map_canvas3'), mapOptions);

                    // Setup skin for the map
                    map.mapTypes.set('nightvision_style', nvisionhstyleMap);
                    map.setMapTypeId('nightvision_style');

                }

                // Night Light
                function generate_map_4() {

                    var mapOptions = {
                        center: new google.maps.LatLng(41.38155, 2.13752),
                        zoom: 12,
                    };
                    map = new google.maps.Map(document.getElementById('map_canvas4'), mapOptions);

                    // Setup skin for the map
                    map.mapTypes.set('nightvision_highlight_style', nvisionhstyleMap);
                    map.setMapTypeId('nightvision_highlight_style');

                }

                // Paper Style
                function generate_map_5() {

                    var mapOptions = {
                        center: new google.maps.LatLng(41.38155, 2.13752),
                        zoom: 12,
                    };
                    map = new google.maps.Map(document.getElementById('map_canvas5'), mapOptions);

                    // Setup skin for the map
                    map.mapTypes.set('old_paper_style', oPaperStyleMap);
                    map.setMapTypeId('old_paper_style');

                }

                // One Color Style
                function generate_map_6() {

                    var mapOptions = {
                        center: new google.maps.LatLng(41.38155, 2.13752),
                        zoom: 12,
                    };
                    map = new google.maps.Map(document.getElementById('map_canvas6'), mapOptions);

                    // Setup skin for the map
                    map.mapTypes.set('mono_color_style', monoColorStyleMap);
                    map.setMapTypeId('mono_color_style');

                }

                // Monochrome Style
                function generate_map_8() {

                    var mapOptions = {
                        center: new google.maps.LatLng(41.38155, 2.13752),
                        zoom: 12,
                    };
                    map = new google.maps.Map(document.getElementById('map_canvas8'), mapOptions);

                    // Setup skin for the map
                    map.mapTypes.set('monochrome_style', monoChromeStyleMap);
                    map.setMapTypeId('monochrome_style');

                }

                // Metro Style
                function generate_map_7() {

                    var mapOptions = {
                        center: new google.maps.LatLng(41.38155, 2.13752),
                        zoom: 12,
                    };
                    map = new google.maps.Map(document.getElementById('map_canvas7'), mapOptions);

                    // Setup skin for the map
                    map.mapTypes.set('metro_style', metroStyleMap);
                    map.setMapTypeId('metro_style');

                }

                demoLoadAttribute();
                generate_map_1();
                generate_map_2();
                generate_map_3();
                generate_map_4();
                generate_map_5();
                generate_map_6();
                generate_map_7();
                generate_map_8();


            };

            $(window).unbind('gMapsLoaded');
            $(window).bind('gMapsLoaded', pagefunction);
            window.loadGoogleMaps();
        })

    </script>
</asp:Content>
