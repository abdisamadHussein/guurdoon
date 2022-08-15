<%@ Page Title="" Language="C#" MasterPageFile="~/Adminstraation/Adminstration.Master" AutoEventWireup="true" CodeBehind="usermanage.aspx.cs" Inherits="Guryosamo.Adminstraation.usermanage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
                <div class="page-body">
                    <div class="container-xl">
                        <div class="row row-cards card d-flex justify-content-lg-center align-content-center">
                            <div class="col-6">
                                <div class="card-header">
                              <p class="text-truncate mt-2 text-center text-danger" id="result" runat="server"></p>

                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-xl-12">
                                            <div class="row">
                                                <div class="col-xl-12">
                                                    <div class="mb-3" id="RESET" runat="server">
                                                        <label class="form-label">Enter the email address</label>
                                                        <asp:TextBox CssClass="form-control " ID="email" runat="server" TextMode="Email" placeHolder="Gali email address"></asp:TextBox>
                                                        <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Soo gali eamil addrees." ControlToValidate="email" Display="Dynamic"></asp:RequiredFieldValidator>

                                                    </div>

                                                </div>
                                                <div>
                                                    <asp:Button class="btn btn-success w-50" ID="btncheck" runat="server" Text="Check" OnClick="btncheck_Click"   />
                                                    <p class="text-truncate mt-2 text-center"></p>

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
