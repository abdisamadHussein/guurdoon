<%@ Page Title="" Language="C#" MasterPageFile="~/Adminstraation/Adminstration.Master" AutoEventWireup="true" CodeBehind="Registrationfee.aspx.cs" Inherits="Guryosamo.Adminstraation.Registrationfee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                            Dadka
                        </div>
                        <h2 class="page-title">Wali la aqbalin
                        </h2>
                    </div>

                </div>
            </div>
        </div>
        <div class="page-body">

            <div class="container-xl">
                <div class="row row-cards">
                         <p id="message" runat="server">wali lama haayo cid la aqbalaayo...</p>
                    <div id="error" runat="server" class="alert alert-danger bg-danger-lt d-flex align-content-center align-items-center" role="alert">
                      
                    Dooro hal iyo waxii ka badan
                      
                    </div>
                </div>
                <div class="row row-cards" id="table" runat="server">
                    <div class="col-12">
                        <div class="card" >
                            <div class="table-responsive">
                                <asp:GridView ID="GridView1" CssClass="table table-vcenter card-table w-100 h-auto" runat="server" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:TemplateField>
                                            <HeaderTemplate>
                                                <asp:CheckBox ID="CheckSelectAll" AutoPostBack="true" runat="server" OnCheckedChanged="CheckSelectAll_CheckedChanged" />
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <asp:CheckBox ID="CheckSelect" runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="full_name" HeaderText="Magaca Seddaxan" />
                                        <asp:BoundField DataField="email_address" HeaderText="User Acount" />
                                        <asp:BoundField DataField="phone" HeaderText="Phone" />
                                    </Columns>
                                </asp:GridView>




                            </div>

                        </div>
                    </div>

                    <div class="col-auto ms-auto d-print-none">
                        <div class="btn-list">
                            <asp:Button CssClass="btn btn-success d-none d-sm-inline-block" ID="Accept" runat="server" Text="Accept" OnClick="Accept_Click"  />
                            <asp:Button CssClass="btn btn-danger d-none d-sm-inline-block" ID="Reject" runat="server" Text="Reject"  OnClick="Reject_Click"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
