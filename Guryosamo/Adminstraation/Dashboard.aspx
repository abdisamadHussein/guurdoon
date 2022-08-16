<%@ Page Title="" Language="C#" MasterPageFile="~/Adminstraation/Adminstration.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Guryosamo.Adminstraation.Dashboard" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.2.3/css/buttons.dataTables.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.3/js/dataTables.buttons.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.3/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.3/js/buttons.print.min.js"></script>
    <script>



        $(document).ready(function () {
            $.ajax({
                url: '../Webservices/reports.asmx/GetUsers',
                method: 'post',
                dataType: 'json',
                success: function (data) {
                    $('#example').dataTable({
                        paging: true,
                        sort: true,
                        searching: true,
                        data: data,
                        columns: [
                            { 'data': 'id' },
                            { 'data': 'full_name' },
                            { 'data': 'gender' },
                            { 'data': 'email' },
                            { 'data': 'phone' },
                        ],
                        dom: 'Bfrtip',
                        buttons: [
                            'copy', 'csv', 'excel', 'pdf', 'print'
                        ]
                    });
                }
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
                                        <div class="h1 m-0" runat="server" id="ragXulasho"></div>
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
                      <div class="col-12">
                <div class="card">
                  <div class="card-header">
                    <h3 class="card-title">All Users</h3>
                  </div>
                  <div class="card-body border-bottom py-3">
               
                  <div class="table-responsive">
                    <table id="example" style="width: 100%" class="table card-table table-vcenter text-nowrap datatable">
                      <thead>
                        <tr>
                            <th>ID</th>
                                        <th>Full Name</th>
                                        <th>Gender</th>
                                        <th>Email Address</th>
                                        <th>Phone</th>
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
