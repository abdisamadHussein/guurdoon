<%@ Page Title="" Language="C#" MasterPageFile="~/Adminstraation/Adminstration.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Guryosamo.Adminstraation.Dashboard" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.datatables.net/1.11.4/css/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js"></script>
    <script>

        $(document).ready(function () {
            $('#datatable').DataTable({
                columns: [
                    { 'data': 'id' },
                    { 'data': 'first_name' },
                    { 'data': 'midlle_name' },
                    { 'data': 'last_name' },
                    { 'data': 'gender' },
                    { 'data': 'phone' },
                    { 'data': 'email' },
                ],
                bServerSide: true,
                processing: true,
                sAjaxSource: '../Webservices/UsersService.asmx/GetUsers',
                sServerMethod: 'post'
            });
        });


    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-wrapper">
        <div class="container-xl">
            <!-- Page title -->
            <div class="page-header d-print-none">
                <div class="row align-items-center">
                    <div class="col">
                        <!-- Page pre-title -->
                        <div class="page-pretitle">
                            Overview
                        </div>
                        <h2 class="page-title">Dashboard
                        </h2>
                    </div>
                    <!-- Page title actions -->
                    <div class="col-auto ms-auto d-print-none">
                        <div class="btn-list">

                          <%--  <a href="#" class="btn btn-success d-none d-sm-inline-block" data-bs-toggle="modal" data-bs-target="#modal-success">
                                <!-- Download SVG icon from http://tabler-icons.io/i/plus -->
                                <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                    <line x1="12" y1="5" x2="12" y2="19" />
                                    <line x1="5" y1="12" x2="19" y2="12" />
                                </svg>
                                Xilliga Fasaxa
                            </a>--%>
                            <a href="#" class="btn btn-primary d-sm-none btn-icon" data-bs-toggle="modal" data-bs-target="#modal-report" aria-label="Create new report">
                                <!-- Download SVG icon from http://tabler-icons.io/i/plus -->
                                <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                    <line x1="12" y1="5" x2="12" y2="19" />
                                    <line x1="5" y1="12" x2="19" y2="12" />
                                </svg>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal modal-blur fade" id="modal-success" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
                <div class="modal-content">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    <div class="modal-status bg-success"></div>
                    <div class="modal-body  py-4">
                        <div class="mb-3">
                            <label class="form-label">Datepicker</label>
                            <label class="form-label">xilliga Bilaabanayo</label>
                            <div class="input-icon mb-2">
                                <input class="form-control " placeholder="Select a date" id="datepicker-icon" value="2020-06-20" />
                                <span class="input-icon-addon">
                                    <!-- Download SVG icon from http://tabler-icons.io/i/calendar -->
                                    <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                        <rect x="4" y="5" width="16" height="16" rx="2" />
                                        <line x1="16" y1="3" x2="16" y2="7" />
                                        <line x1="8" y1="3" x2="8" y2="7" />
                                        <line x1="4" y1="11" x2="20" y2="11" />
                                        <line x1="11" y1="15" x2="12" y2="15" />
                                        <line x1="12" y1="15" x2="12" y2="18" />
                                    </svg>
                                </span>
                            </div>
                            <label class="form-label">xilliga ay dhamaanayso</label>
                            <div class="input-icon mb-2">
                                <input class="form-control " placeholder="Select a date" id="datepicker-icon" value="2020-06-20" />
                                <span class="input-icon-addon">
                                    <!-- Download SVG icon from http://tabler-icons.io/i/calendar -->
                                    <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                        <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                        <rect x="4" y="5" width="16" height="16" rx="2" />
                                        <line x1="16" y1="3" x2="16" y2="7" />
                                        <line x1="8" y1="3" x2="8" y2="7" />
                                        <line x1="4" y1="11" x2="20" y2="11" />
                                        <line x1="11" y1="15" x2="12" y2="15" />
                                        <line x1="12" y1="15" x2="12" y2="18" />
                                    </svg>
                                </span>
                            </div>

                        </div>
                    </div>
                    <div class="modal-footer">
                        <div class="w-100">
                            <div class="row">
                                <div class="col">
                                    <a href="#" class="btn w-50" data-bs-dismiss="modal">
                                        <!-- Download SVG icon from http://tabler-icons.io/i/arrow-narrow-left -->
                                        <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                            <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                            <line x1="5" y1="12" x2="19" y2="12" />
                                            <line x1="5" y1="12" x2="9" y2="16" />
                                            <line x1="5" y1="12" x2="9" y2="8" />
                                        </svg>
                                    </a>
                                </div>
                                <div class="col">
                                    <a href="#" class="btn btn-success w-100" data-bs-dismiss="modal">save
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="page-body">
            <div class="container-xl">
                <div class="row row-cards">
                    <div class="col-md-6 col-xl-6">

                        <div class="row row-cards ">
                            <div class="col-md-4">
                                <div class="card">
                                    <div class="card-body p-3 text-center ">
                                        <div class="text-end text-green">
                                            <span class="text-green d-inline-flex align-items-center lh-1">Dhamaan
                                            </span>
                                        </div>
                                        <div class="h1 m-0" runat="server" id="allXulasho"></div>
                                        <div class="text-muted mb-3 ">Xulasho sameysay</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="card">
                                    <div class="card-body p-3 text-center ">
                                        <div class="text-end text-green">
                                            <span class="text-green d-inline-flex align-items-center lh-1">Ragga
                                            </span>
                                        </div>
                                        <div class="h1 m-0" runat="server" id ="ragXulasho"></div>
                                        <div class="text-muted mb-3 ">Xulasho sameysay</div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="card">
                                    <div class="card-body p-3 text-center ">
                                        <div class="text-end text-green">
                                            <span class="text-green d-inline-flex align-items-center lh-1">Haweenka
                                            </span>
                                        </div>
                                        <div class="h1 m-0" runat="server" id="dumarXulasho"></div>
                                        <div class="text-muted mb-3 ">Xulasho sameysay</div>
                                    </div>
                                </div>
                            </div>



                        </div>
                    </div>
                    <div class="col-md-6 col-xl-12">
                        <div class="card">
                            <div class="card-header d-flex  justify-content-between">
                                <h3 class="card-title">Dhamaan isticmaalayaasha</h3>
                               
                                    <asp:LinkButton CssClass="btn  w-25  mx-0" ID="Print" runat="server" OnClick="rpPrint_Click">
                                         <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-printer" width="44" height="44" viewBox="0 0 24 24" stroke-width="1.5" stroke="#2c3e50" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                          <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                          <path d="M17 17h2a2 2 0 0 0 2 -2v-4a2 2 0 0 0 -2 -2h-14a2 2 0 0 0 -2 2v4a2 2 0 0 0 2 2h2" />
                                          <path d="M17 9v-4a2 2 0 0 0 -2 -2h-6a2 2 0 0 0 -2 2v4" />
                                          <rect x="7" y="13" width="10" height="8" rx="2" />
                                        </svg> print
                                    </asp:LinkButton>

                                </div>
                            <div class="card-body border-bottom py-3">
                                <div class="table-responsive">
                                    <table class="table card-table table-vcenter text-nowrap datatable  w-100" id="datatable">
                                        <thead>
                                            <tr>
                                                <th>Id</th>
                                                <th>First Name</th>
                                                <th>Midlle Name</th>
                                                <th>Last Name</th>
                                                <th>Gender</th>
                                                <th>Phone</th>
                                                <th>Email address</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
