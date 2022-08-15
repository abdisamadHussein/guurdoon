<%@ Page Title="" Language="C#" MasterPageFile="~/Acount/Acount.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Guryosamo.Acount.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../dist/libs/apexcharts/dist/apexcharts.min.js"></script>
    <asp:Literal runat="server" ID="l"></asp:Literal>

    <script type="text/javascript" language="javascript">

        function showBrowseDialog() {
            var fileuploadctrl = document.getElementById('<%= FileUpload2.ClientID %>');
            fileuploadctrl.click();
        }

        function upload() {
            var btn = document.getElementById('<%= hideButton.ClientID %>');
            btn.click();
        }

    </script>

    <%--<script type="text/javascript">
    function UploadFile(fileUpload) {
        if (fileUpload.value != '') {
            document.getElementById("<%=btnUpload.ClientID %>").click();
        }
    }--%>
    <%--</script>--%>


    <script type="text/javascript">
        var labal;
        var data;
        var a = data[0];
        var b = data[1];

        // @formatter:off
        document.addEventListener("DOMContentLoaded", function () {
            window.ApexCharts && (new ApexCharts(document.getElementById('chart-demo-pie'), {
                chart: {
                    type: "donut",
                    fontFamily: 'inherit',
                    height: 290,
                    sparkline: {
                        enabled: true
                    },
                    animations: {
                        enabled: false
                    },
                },
                fill: {
                    opacity: 1,
                },
                series: data,
                labels: ["Ekansho", "kalduwan"],

                grid: {
                    strokeDashArray: 50,
                },
                colors: ["#056b05", "#f71707"],
                legend: {
                    show: true,
                    position: 'bottom',
                    offsetY: 15,
                    markers: {
                        width: 10,
                        height: 10,
                        radius: 100,
                    },
                    itemMargin: {
                        horizontal: 8,
                        vertical: 8
                    },
                },
                tooltip: {
                    fillSeriesColor: false
                },
            })).render();
        });
        // @formatter:on\


    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="page-wrapper">
        <div class="container-xl">
            <!-- Page title -->
            <div class="page-header d-print-none">
                <div class="row align-items-center">
                    <div class="col">
                        <h2 class="page-title">My Account
                        </h2>
                        <div class="text-muted mt-1"></div>
                    </div>

                </div>
            </div>
            <div class="page-body">
                <div class="">
                    <div class="row row-cards">
                        <div class="col-md-6 col-xl-3">
                            <div class="card ">
                                <div class="card-cover card-cover-blurred text-center" style="background-image: url(../static/photos/2854fd67ddbd6217.jpg)">
                                    <div style="position: absolute; top: 0; right: 0;">
                                        <asp:FileUpload ID="FileUpload2" Style="display: none" runat="server" onchange="upload()" />
                                        <button class="btn btn-outline avatar" style="border: none; background-color: transparent;" type="button" onclick="showBrowseDialog()">
                                            <!-- Download SVG icon from http://tabler-icons.io/i/camera-plus -->
                                            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round" style="color: white">
                                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                <circle cx="12" cy="13" r="3" />
                                                <path d="M5 7h2a2 2 0 0 0 2 -2a1 1 0 0 1 1 -1h2m9 7v7a2 2 0 0 1 -2 2h-14a2 2 0 0 1 -2 -2v-9a2 2 0 0 1 2 -2" />
                                                <line x1="15" y1="6" x2="21" y2="6" />
                                                <line x1="18" y1="3" x2="18" y2="9" />
                                            </svg></button>
                                        <asp:Button runat="server" ID="hideButton" Text="" Style="display: none" OnClick="UploadButton_Click" />
                                    </div>
                                    <span id="picture" runat="server" class="avatar avatar-xl avatar-thumb avatar-rounded"></span>

                                </div>
                                <div class="card-body text-center">
                                    <%-- <asp:Label ID="lblMessage" runat="server" Text="File uploaded successfully." ForeColor="Green" Visible="false" />--%>


                                    <div class="card-title mb-1" id="profile_info_name" runat="server">account name </div>
                                    <div class="text-muted" id="profile_info_email" runat="server">email_address</div>
                                    <div class="text-muted" id="profile_info_tellefonka" runat="server">phone</div>
                                    <%--<div class="mt-3">
                                        <span class="badge bg-purple-lt">Owner</span>
                                    </div>--%>
                                </div>
                                <a href="Setting.aspx" class="card-btn">View Full Profile</a>
                            </div>
                        </div>
                        <div class="col-md-6 col-xl-9">
                            <div class="card h-100 w-100  card-cover-blurred ">

                                <div class="card-body">
                                    <asp:Label ID="lbmgs" runat="server" Text=""></asp:Label>
                                    <asp:GridView class="table table-mobile-md card-table w-100 h-auto " RowStyle-BorderColor="red" ID="gvInfo" runat="server" ShowHeader="true" Height="158px" Width="531px" BorderStyle="None" AutoGenerateColumns="False" OnRowCommand="gvInfo_RowCommand">
                                        <Columns>
                                            <asp:BoundField DataField="age_range" HeaderText="Da'da" />
                                            <asp:BoundField DataField="education_level" HeaderText="Aqoon" />
                                            <asp:BoundField DataField="does_she_work" HeaderText="Shaqo" />
                                            <asp:BoundField DataField="Mariage_status" HeaderText="Guur" />
                                            <asp:BoundField DataField="skin_color" HeaderText="Midab" />
                                            <asp:BoundField DataField="height" HeaderText="Dhirir" />
                                            <asp:BoundField DataField="weight" HeaderText="Culays" />
                                            <asp:BoundField DataField="cunto_karinta" HeaderText="Cunto karin" />
                                            <asp:BoundField DataField="Average" HeaderText="Celcelis" />

                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton CssClass="btn btn-sm btn-success mx-2" ID="btnApprove" runat="server" CommandName="accept" CommandArgument="<%# Container.DataItemIndex %>"> <!-- Download SVG icon from http://tabler-icons.io/i/check -->
	                                                    <svg xmlns="http://www.w3.org/2000/svg" class="icon m-0" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                            <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                                            <path d="M5 12l5 5l10 -10" /></svg></asp:LinkButton>
                                                    <asp:LinkButton CssClass="btn btn-sm btn-danger mx-2" ID="btnDeny" runat="server" CommandName="deny" CommandArgument="<%# Container.DataItemIndex %>"><!-- Download SVG icon from http://tabler-icons.io/i/letter-x -->
                                                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-x m-0" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                       <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                                                       <line x1="18" y1="6" x2="6" y2="18"></line>
                                                       <line x1="6" y1="6" x2="18" y2="18"></line>
                                                    </svg></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                        </Columns>
                                    </asp:GridView>
                                    <asp:GridView class="table table-mobile-md card-table w-100 h-auto " RowStyle-BorderColor="red" ID="AcceptInfo" runat="server" ShowHeader="true" Height="158px" Width="531px" BorderStyle="None" AutoGenerateColumns="False" OnRowCommand="AcceptInfo_RowCommand">
                                        <Columns>
                                            <asp:BoundField DataField="age_range" HeaderText="Da'da" />
                                            <asp:BoundField DataField="education_level" HeaderText="Aqoon" />
                                            <asp:BoundField DataField="work_place" HeaderText="Shaqada" />
                                            <asp:BoundField DataField="job_title" HeaderText="Jagada" />
                                            <asp:BoundField DataField="Mariage_status" HeaderText="Guur" />
                                            <asp:BoundField DataField="skin_color" HeaderText="Midab" />
                                            <asp:BoundField DataField="height" HeaderText="Dhirir" />
                                            <asp:BoundField DataField="weight" HeaderText="Culays" />
                                            <asp:BoundField DataField="homework_help" HeaderText="caawinta" />

                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton CssClass="btn btn-sm btn-success mx-2" ID="btnApprove" runat="server" CommandName="accept" CommandArgument="<%# Container.DataItemIndex %>"> <!-- Download SVG icon from http://tabler-icons.io/i/check -->
	                                                    <svg xmlns="http://www.w3.org/2000/svg" class="icon m-0" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                            <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                                            <path d="M5 12l5 5l10 -10" /></svg></asp:LinkButton>
                                                    <asp:LinkButton CssClass="btn btn-sm btn-danger mx-2" ID="btnDeny" runat="server" CommandName="deny" CommandArgument="<%# Container.DataItemIndex %>"><!-- Download SVG icon from http://tabler-icons.io/i/letter-x -->
                                                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-x m-0" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                       <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                                                       <line x1="18" y1="6" x2="6" y2="18"></line>
                                                       <line x1="6" y1="6" x2="18" y2="18"></line>
                                                    </svg></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                        </Columns>
                                    </asp:GridView>
                                    <asp:GridView class="table table-mobile-md card-table w-100 h-auto " RowStyle-BorderColor="red" ID="AcceptInfoFemale" runat="server" ShowHeader="true" Height="158px" Width="531px" BorderStyle="None" AutoGenerateColumns="False" OnRowCommand="AcceptInfoFemale_RowCommand">
                                        <Columns>
                                            <asp:BoundField DataField="age_range" HeaderText="Da'da" />
                                            <asp:BoundField DataField="do_you_work" HeaderText="shaqo" />
                                            <asp:BoundField DataField="education_level" HeaderText="Aqoon" />
                                            <%--   <asp:BoundField DataField="work_place" HeaderText="Shaqadiisa" />
                                            <asp:BoundField DataField="job_title" HeaderText="Jagada" />--%>
                                            <asp:BoundField DataField="Mariage_status" HeaderText="Guur" />
                                            <asp:BoundField DataField="skin_color" HeaderText="Midab" />
                                            <asp:BoundField DataField="height" HeaderText="Dhirir" />
                                            <asp:BoundField DataField="weight" HeaderText="Culays" />
                                            <asp:BoundField DataField="cooking" HeaderText="cunto karin" />

                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton CssClass="btn btn-sm btn-success mx-2" ID="btnApprove" runat="server" CommandName="accept" CommandArgument="<%# Container.DataItemIndex %>"> <!-- Download SVG icon from http://tabler-icons.io/i/check -->
	                                                    <svg xmlns="http://www.w3.org/2000/svg" class="icon m-0" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                            <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                                            <path d="M5 12l5 5l10 -10" /></svg></asp:LinkButton>
                                                    <asp:LinkButton CssClass="btn btn-sm btn-danger mx-2" ID="btnDeny" runat="server" CommandName="deny" CommandArgument="<%# Container.DataItemIndex %>"><!-- Download SVG icon from http://tabler-icons.io/i/letter-x -->
                                                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-x m-0" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                       <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                                                       <line x1="18" y1="6" x2="6" y2="18"></line>
                                                       <line x1="6" y1="6" x2="18" y2="18"></line>
                                                    </svg></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                        </Columns>
                                    </asp:GridView>
                                    <asp:GridView class="table table-mobile-md card-table w-100 h-auto " RowStyle-BorderColor="red" ID="gvinfoMale" runat="server" ShowHeader="true" Height="158px" Width="531px" BorderStyle="None" AutoGenerateColumns="False" OnRowCommand="gvinfoMale_RowCommand">
                                        <Columns>
                                            <asp:BoundField DataField="age_range" HeaderText="Da'da" />
                                            <asp:BoundField DataField="education_level" HeaderText="Aqoon" />
                                            <asp:BoundField DataField="Mariage_status" HeaderText="Guur" />
                                            <asp:BoundField DataField="skin_color" HeaderText="Midab" />
                                            <asp:BoundField DataField="height" HeaderText="Dhirir" />
                                            <asp:BoundField DataField="weight" HeaderText="Culays" />
                                            <asp:BoundField DataField="homework_help" HeaderText="Caawinta" />
                                            <asp:BoundField DataField="Average" HeaderText="Celcelis" />

                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton CssClass="btn btn-sm btn-success mx-2" ID="btnApprove" runat="server" CommandName="accept" CommandArgument="<%# Container.DataItemIndex %>"> <!-- Download SVG icon from http://tabler-icons.io/i/check -->
	                                                    <svg xmlns="http://www.w3.org/2000/svg" class="icon m-0" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                            <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                                            <path d="M5 12l5 5l10 -10" /></svg></asp:LinkButton>
                                                    <asp:LinkButton CssClass="btn btn-sm btn-danger mx-2" ID="btnDeny" runat="server" CommandName="deny" CommandArgument="<%# Container.DataItemIndex %>"><!-- Download SVG icon from http://tabler-icons.io/i/letter-x -->
                                                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-x m-0" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                       <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                                                       <line x1="18" y1="6" x2="6" y2="18"></line>
                                                       <line x1="6" y1="6" x2="18" y2="18"></line>
                                                    </svg></asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>


                                        </Columns>
                                    </asp:GridView>
                                    <div class="card-body-xl" id="chartbody" runat="server">
                                        <asp:Button ID="View" CssClass="btn btn-white " runat="server" Text="view" OnClick="View_Click" />
                                        <div id="chart-demo-pie"></div>
                                    </div>
                                    <div class="col-12" id="infoFemale" runat="server">
                                        <div class="card-body">
                                            <h2 class="card-title text-success m-0">Hambalyo, codsigii aad dirsatay waa la'aqbalay.</h2>
                                            <h2 class="">Macluumaadka Shaqsiga</h2>
                                            <div class="mb-2">
                                                <!-- Download SVG icon from http://tabler-icons.io/i/book -->
                                                <!-- Download SVG icon from http://tabler-icons.io/i/user -->
                                                <svg xmlns="http://www.w3.org/2000/svg" class="icon me-2 text-muted" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                    <circle cx="12" cy="7" r="4" />
                                                    <path d="M6 21v-2a4 4 0 0 1 4 -4h4a4 4 0 0 1 4 4v2" />
                                                </svg>
                                                Magaca: <strong id="fname" runat="server"></strong>
                                            </div>
                                            <div class="mb-2">

                                                <svg xmlns="http://www.w3.org/2000/svg" class="icon me-2 text-muted" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                    <path d="M5 4h4l2 5l-2.5 1.5a11 11 0 0 0 5 5l1.5 -2.5l5 2v4a2 2 0 0 1 -2 2a16 16 0 0 1 -15 -15a2 2 0 0 1 2 -2" />
                                                    <path d="M15 7a2 2 0 0 1 2 2" />
                                                    <path d="M15 3a6 6 0 0 1 6 6" />
                                                </svg>
                                                Taleefonka : <strong id="fphone" runat="server"></strong>
                                            </div>
                                            <div class="mb-2">
                                                <svg xmlns="http://www.w3.org/2000/svg" class="icon me-2 text-muted" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                    <polyline points="5 12 3 12 12 3 21 12 19 12" />
                                                    <path d="M5 12v7a2 2 0 0 0 2 2h10a2 2 0 0 0 2 -2v-7" />
                                                    <path d="M9 21v-6a2 2 0 0 1 2 -2h2a2 2 0 0 1 2 2v6" />
                                                </svg>
                                                Magaalada: <strong id="faddress" runat="server"></strong>
                                            </div>

                                            <div class="mb-2">
                                                <svg xmlns="http://www.w3.org/2000/svg" class="icon me-2 text-muted" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                    <path d="M3 19a9 9 0 0 1 9 0a9 9 0 0 1 9 0" />
                                                    <path d="M3 6a9 9 0 0 1 9 0a9 9 0 0 1 9 0" />
                                                    <line x1="3" y1="6" x2="3" y2="19" />
                                                    <line x1="12" y1="6" x2="12" y2="19" />
                                                    <line x1="21" y1="6" x2="21" y2="19" />
                                                </svg>
                                                Heerka Waxbarashada: <strong id="feducation" runat="server"></strong>
                                            </div>

                                            <div class="mb-2">
                                                <svg xmlns="http://www.w3.org/2000/svg" class="icon me-2 text-muted" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                    <rect x="3" y="7" width="18" height="13" rx="2" />
                                                    <path d="M8 7v-2a2 2 0 0 1 2 -2h4a2 2 0 0 1 2 2v2" />
                                                    <line x1="12" y1="12" x2="12" y2="12.01" />
                                                    <path d="M3 13a20 20 0 0 0 18 0" />
                                                </svg>
                                                Shaqadeeda: <strong id="fwork" runat="server"></strong>
                                            </div>

                                            <div class="mb-2">
                                                <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-tools-kitchen-2 me-2 text-muted" width="44" height="44" viewBox="0 0 24 24" stroke-width="1.5" stroke="#2c3e50" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                    <path d="M19 3v12h-5c-.023 -3.681 .184 -7.406 5 -12zm0 12v6h-1v-3m-10 -14v17m-3 -17v3a3 3 0 1 0 6 0v-3" />
                                                </svg>
                                                Cunto Karintta: <strong id="fcooking" runat="server"></strong>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-12" id="infoMale" runat="server">
                                        <div class="card-body">
                                            <h2 class="card-title text-success m-0">Hambalyo, codsigii aad dirsatay waa la'aqbalay.</h2>
                                            <h2 class="">Macluumaadka Shaqsiga</h2>
                                            <div class="mb-2">
                                                <!-- Download SVG icon from http://tabler-icons.io/i/book -->
                                                <!-- Download SVG icon from http://tabler-icons.io/i/user -->
                                                <svg xmlns="http://www.w3.org/2000/svg" class="icon me-2 text-muted" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                    <circle cx="12" cy="7" r="4" />
                                                    <path d="M6 21v-2a4 4 0 0 1 4 -4h4a4 4 0 0 1 4 4v2" />
                                                </svg>
                                                Magaca: <strong id="Mname" runat="server"></strong>
                                            </div>
                                            <div class="mb-2">

                                                <svg xmlns="http://www.w3.org/2000/svg" class="icon me-2 text-muted" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                    <path d="M5 4h4l2 5l-2.5 1.5a11 11 0 0 0 5 5l1.5 -2.5l5 2v4a2 2 0 0 1 -2 2a16 16 0 0 1 -15 -15a2 2 0 0 1 2 -2" />
                                                    <path d="M15 7a2 2 0 0 1 2 2" />
                                                    <path d="M15 3a6 6 0 0 1 6 6" />
                                                </svg>
                                                Taleefonka : <strong id="Mphone" runat="server"></strong>
                                            </div>
                                            <div class="mb-2">
                                                <svg xmlns="http://www.w3.org/2000/svg" class="icon me-2 text-muted" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                    <polyline points="5 12 3 12 12 3 21 12 19 12" />
                                                    <path d="M5 12v7a2 2 0 0 0 2 2h10a2 2 0 0 0 2 -2v-7" />
                                                    <path d="M9 21v-6a2 2 0 0 1 2 -2h2a2 2 0 0 1 2 2v6" />
                                                </svg>
                                                Magaalada: <strong id="Maddress" runat="server"></strong>
                                            </div>

                                            <div class="mb-2">
                                                <svg xmlns="http://www.w3.org/2000/svg" class="icon me-2 text-muted" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                    <path d="M3 19a9 9 0 0 1 9 0a9 9 0 0 1 9 0" />
                                                    <path d="M3 6a9 9 0 0 1 9 0a9 9 0 0 1 9 0" />
                                                    <line x1="3" y1="6" x2="3" y2="19" />
                                                    <line x1="12" y1="6" x2="12" y2="19" />
                                                    <line x1="21" y1="6" x2="21" y2="19" />
                                                </svg>
                                                Heerka Waxbarashada: <strong id="Meducation" runat="server"></strong>
                                            </div>

                                            <div class="mb-2">
                                                <svg xmlns="http://www.w3.org/2000/svg" class="icon me-2 text-muted" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                    <rect x="3" y="7" width="18" height="13" rx="2" />
                                                    <path d="M8 7v-2a2 2 0 0 1 2 -2h4a2 2 0 0 1 2 2v2" />
                                                    <line x1="12" y1="12" x2="12" y2="12.01" />
                                                    <path d="M3 13a20 20 0 0 0 18 0" />
                                                </svg>
                                                Shaqadiisa: <strong id="Mwork" runat="server"></strong>
                                            </div>

                                            <div class="mb-2">
                                                <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-tools-kitchen-2 me-2 text-muted" width="44" height="44" viewBox="0 0 24 24" stroke-width="1.5" stroke="#2c3e50" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                    <path d="M19 3v12h-5c-.023 -3.681 .184 -7.406 5 -12zm0 12v6h-1v-3m-10 -14v17m-3 -17v3a3 3 0 1 0 6 0v-3" />
                                                </svg>
                                                Caawinta Guriga: <strong id="support" runat="server"></strong>
                                            </div>

                                        </div>
                                    </div>
                                    <div id="rejected" runat="server">
                                        <div class="col-md-6 col-xl-12">
                                            <div class="card card-sm">
                                                <div class="card-body">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <span class="bg-blue-lt avatar">
                                                                <!-- Download SVG icon from http://tabler-icons.io/i/info-circle -->
                                                                <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                                    <circle cx="12" cy="12" r="9" />
                                                                    <line x1="12" y1="8" x2="12.01" y2="8" />
                                                                    <polyline points="11 12 12 12 12 16 13 16" />
                                                                </svg>
                                                            </span>


                                                        </div>
                                                        <div class="col">
                                                            <div class="font-weight-medium">
                                                                <h3 class="d-inline-block">Codsigaaga lama soo aqbalin.</h3>
                                                            </div>
                                                            <div class=" font-weight-bold">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <div id="notFound" runat="server">
                                        <div class="col-md-6 col-xl-12">
                                            <div class="card card-sm">
                                                <div class="card-body">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <span class="bg-blue-lt avatar">
                                                                <!-- Download SVG icon from http://tabler-icons.io/i/info-circle -->
                                                                <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                                    <circle cx="12" cy="12" r="9" />
                                                                    <line x1="12" y1="8" x2="12.01" y2="8" />
                                                                    <polyline points="11 12 12 12 12 16 13 16" />
                                                                </svg>
                                                            </span>


                                                        </div>
                                                        <div class="col">
                                                            <div class="font-weight-medium">
                                                                <h3 class="d-inline-block">Lamahelin qofka aad xulatay. waqti kale iskuday</h3>
                                                            </div>
                                                            <div class=" font-weight-bold">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <div id="wait" runat="server">
                                        <div class="col-md-6 col-xl-12">
                                            <div class="card card-sm">
                                                <div class="card-body">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <span class="bg-blue-lt avatar">
                                                                <!-- Download SVG icon from http://tabler-icons.io/i/info-circle -->
                                                                <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                                    <circle cx="12" cy="12" r="9" />
                                                                    <line x1="12" y1="8" x2="12.01" y2="8" />
                                                                    <polyline points="11 12 12 12 12 16 13 16" />
                                                                </svg>
                                                            </span>


                                                        </div>
                                                        <div class="col">
                                                            <div class="font-weight-medium">
                                                                <h3 class="d-inline-block">Sug inta lagaa hubinaayo</h3>
                                                            </div>
                                                            <div class=" font-weight-bold">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <div id="pending" runat="server">
                                        <div class="col-md-6 col-xl-12">
                                            <div class="card card-sm bg-green">
                                                <div class="card-body">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <span class="bg-white avatar rounded-circle">
                                                                <!-- Download SVG icon from http://tabler-icons.io/i/info-circle -->
                                                                <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                                    <circle cx="12" cy="12" r="9" />
                                                                    <line x1="12" y1="8" x2="12.01" y2="8" />
                                                                    <polyline points="11 12 12 12 12 16 13 16" />
                                                                </svg>
                                                            </span>


                                                        </div>
                                                        <div class="col">
                              
                                                            <div class="text-white font-weight-medium">
                                                                <h3 class="d-inline-block">Si aad <span id="second" runat="server"></span> u sameysid xulasho   </h3>

                                                                <asp:LinkButton ID="LinkButton1"  CssClass="btn btn-white text-green  ms-3"  runat="server" PostBackUrl="~/Acount/Payment.aspx">Bixi Khidmada</asp:LinkButton>
                                                                <%--<asp:Button CssClass="btn btn-white text-green  ms-3" ID="paid" runat="server" Text="waan bixiyey" OnClick="paid_Click" />--%>
                                                            </div>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <div id="reject" class="mt-3" runat="server">
                                        <div class="col-md-6 col-xl-12">
                                            <div class="card card-sm">
                                                <div class="card-body">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <span class="bg-red avatar">
                                                                <!-- Download SVG icon from http://tabler-icons.io/i/info-circle -->
                                                                <!-- Download SVG icon from http://tabler-icons.io/i/x -->
                                                                <svg xmlns="http://www.w3.org/2000/svg" class="icon text-white" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                                    <circle cx="12" cy="12" r="9" />
                                                                    <line x1="6" y1="6" x2="18" y2="18" />
                                                                </svg>
                                                            </span>

                                                        </div>
                                                        <div class="col">
                                                            <div class="font-weight-medium ">
                                                                <span class="float-right font-weight-medium">Wali maadan bixin khidmada Ku bixi habkaan</span>
                                                                <h3 class="d-inline-block float-right font-weight-medium text-info">*789*xxxxxx*$#</h3>
                                                                <asp:Button ID="renew" CssClass="btn  btn-light active w-25 ms-3" runat="server" Text="renew" OnClick="renew_Click" />

                                                                <span>Wixii cillad ah nagala soo xariir 00252xxxxxxxxx</span>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="beforeAcept" runat="server">
                                        <div class="col-md-6 col-xl-12">
                                            <div class="card card-sm">
                                                <div class="card-body">
                                                    <div class="row align-items-center">
                                                        <div class="col-auto">
                                                            <span class="bg-blue-lt avatar">
                                                                <!-- Download SVG icon from http://tabler-icons.io/i/info-circle -->
                                                                <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                                    <circle cx="12" cy="12" r="9" />
                                                                    <line x1="12" y1="8" x2="12.01" y2="8" />
                                                                    <polyline points="11 12 12 12 12 16 13 16" />
                                                                </svg>
                                                            </span>

                                                        </div>
                                                        <div class="col">
                                                            <div class="font-weight-medium">
                                                                <h3 class="d-inline-block">Sug inta uu kaaga soojawaabayo ruuxa aad codsatay.  <br /> <span class="text-danger">FG:</span> Waxaad ogaataa in lagu aqbalikaro ama la diidikaro</h3>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
