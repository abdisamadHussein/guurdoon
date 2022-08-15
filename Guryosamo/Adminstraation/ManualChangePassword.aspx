<%@ Page Title="" Language="C#" MasterPageFile="~/Adminstraation/Adminstration.Master" AutoEventWireup="true" CodeBehind="ManualChangePassword.aspx.cs" Inherits="Guryosamo.Adminstraation.ManualChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-wrapper">
                <div class="container-xl">
                    <!-- Page title -->
                    <div class="page-header d-print-none">
                    </div>
                </div>
                <div class="page-body">
                    <div class="container-tight">
                        <div class="row row-cards card">
                            <div class="col-12">
                                <div class="card-header">
                                    <div class="row align-items-center">
                                        <div class="col">
                                            <h2 class="page-title"> Change password
                                            </h2>
                                            <p class="text-truncate mt-2 text-center text-danger" id="result" runat="server"></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-xl-12">
                                            <div class="row" ID="Changepas" runat="server">
                                                <div class="col-xl-12">
                                                    <div class="mb-3">
                                                        <label class="form-label">Enter Old password</label>
                                                        <asp:TextBox CssClass="form-control " ID="OldPassword" runat="server" TextMode="Password" placeHolder="old password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Soo gali password kihore." ControlToValidate="OldPassword" Display="Dynamic" Font-Size="Small"></asp:RequiredFieldValidator>
                                                    </div>
                                                    <div class="mb-3">
                                                        <label class="form-label">Enter new password</label>
                                                        <asp:TextBox CssClass="form-control " ID="txtPasswordNew" runat="server" TextMode="password" placeHolder="new password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Soo gali passwordka." ControlToValidate="txtPasswordNew" Display="Dynamic" Font-Size="Small"></asp:RequiredFieldValidator>
                                                       

                                                    </div>
                                                    
                                                </div>
                                                <div>
                                                    <asp:Button class="btn btn-success w-100" ID="btnchangepassword" runat="server" Text="Change Password" OnClick="btnchangepassword_Click"  />
                                                    

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
