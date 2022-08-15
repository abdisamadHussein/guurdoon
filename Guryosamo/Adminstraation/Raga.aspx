<%@ Page Title="" Language="C#" MasterPageFile="~/Adminstraation/Adminstration.Master" AutoEventWireup="true" CodeBehind="Raga.aspx.cs" Inherits="Guryosamo.Adminstraation.Raga" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
     <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
    <link href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css" rel="stylesheet" />
    <script>

 
$(document).ready(function() {
    $('#example').DataTable({
        columns: [
            { 'data': 'fullName' },
            { 'data': 'gender' },
            { 'data': 'age' },
            { 'data': 'mariageStatus' },
            { 'data': 'phone' },
            { 'data': 'email' },
            { 'data': 'address' }
        ],
        bServerSide: true,
        sAjaxSource: '../Webservices/Users.asmx/GetAllMaleUsers',
        sServerMethod: 'post'
    });
} );
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container" style="margin-top:55px;">
          <div class="col-12">
                <div class="card">
                  <div class="card-header">
                    <h3 class="card-title">Dhamaa Raga</h3>
                  </div>
                  <div class="card-body border-bottom py-3">
                        <div class="table-responsive">
     
                    <table id="example" class="table card-table table-vcenter text-nowrap datatable" width="100%">
                        <thead>
                                <tr>
                                    <th>Maga Saddexan</th>
                                    <th>Jinsiga</th>
                                    <th>Qiyaasta Da'da</th>
                                    <th>Guurka</th>
                                    <th>Talefoon lambarka </th>
                                    <th>Email address</th>
                                    <th>Deegaanka</th>
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
