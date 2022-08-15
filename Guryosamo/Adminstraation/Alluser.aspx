<%@ Page Title="" Language="C#" MasterPageFile="~/Adminstraation/Adminstration.Master" AutoEventWireup="true" CodeBehind="Alluser.aspx.cs" Inherits="Guryosamo.Adminstraation.Alluser" %>
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
     <div class="container" style="margin-top:55px;">
          <div class="col-12">
                <div class="card">
                  <div class="card-header">
                    <h3 class="card-title">All Users</h3>
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
</asp:Content>
