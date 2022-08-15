<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Guryosamo.Auth.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Guryosamo</title>
    <!-- CSS files -->
    <link href="../dist/css/tabler.min.css" rel="stylesheet" />
    <link href="../dist/css/tabler-flags.min.css" rel="stylesheet" />
    <link href="../dist/css/tabler-payments.min.css" rel="stylesheet" />
    <link href="../dist/css/tabler-vendors.min.css" rel="stylesheet" />
    <link href="../dist/css/demo.min.css" rel="stylesheet" />
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.0/sweetalert.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.0/sweetalert.min.css"
        rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
        <div>

        <div class="wrapper">
            <header class="navbar navbar-expand-md navbar-light d-print-none">
                <div class="container-xl">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-menu">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <h1 class="navbar-brand navbar-brand-autodark d-none-navbar-horizontal pe-0 pe-md-3">
                        <a href="." class="mx-2">
                            <img src="../static/logo.png" width="110" height="32" alt="Tabler" class="navbar-brand-image" />
                        </a>
                        Guurdoon
                    </h1>

                </div>
            </header>

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
                                                        <label class="form-label">Enter new password</label>
                                                        <asp:TextBox CssClass="form-control " ID="Password" runat="server" TextMode="Password" placeHolder="New password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Soo gali eamil addrees." ControlToValidate="Password" Display="Dynamic" Font-Size="Small"></asp:RequiredFieldValidator>
                                                    </div>
                                                    <div class="mb-3">
                                                        <label class="form-label">Confirm new password</label>
                                                        <asp:TextBox CssClass="form-control " ID="ConfirmPassword" runat="server" TextMode="password" placeHolder="Confirm password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Soo gali passwordka." ControlToValidate="ConfirmPassword" Display="Dynamic" Font-Size="Small"></asp:RequiredFieldValidator>
                                                        <asp:CompareValidator CssClass="text-danger" ID="CompareValidator1" runat="server" ErrorMessage="passwordka isku mid ma ahan." ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" Font-Size="Small"> </asp:CompareValidator>

                                                    </div>
                                                    
                                                </div>
                                                <div>
                                                    <asp:Button class="btn btn-success w-100" ID="Button1" runat="server" Text="Save" OnClick="Button1_Click"  />
                                                    

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
        <footer class="footer footer-transparent d-print-none">
            <div class="container-xl">
                <div class="row text-center align-items-center flex-row-reverse">
                    <div class="col-12 col-lg-auto mt-3 mt-lg-0">
                        <ul class="list-inline list-inline-dots mb-0">
                            <li class="list-inline-item">Copyright &copy; 2021
                  <a href="." class="link-secondary">Tabler</a>.
                  All rights reserved.
                            </li>
                            <li class="list-inline-item">
                                <a href="./changelog.html" class="link-secondary" rel="noopener">v1.0.0-beta5
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
 


        </div>
    </form>
</body>
</html>
