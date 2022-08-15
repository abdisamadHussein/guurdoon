<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Guryosamo.Auth.SignUp" %>

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
    <script type="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
</head>
<body>
    <form id="form1" runat="server">
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
                    <div class="container-narrow">
                        <div class="row row-cards card d-flex  align-content-center">
                            <div class="col-12">
                                    <div class="card-header">
                                        <div class="row d-flex align-items-center justify-content-center">
                                            <div class="col">
                                                <h2 class="page-title">Sameyso Akoon Gaarah
                                                </h2>
                                                <p>Create Account</p>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-xl-6">
                                                <div class="row">
                                                        <div class="mb-3">
                                                            <label class="form-label">Magaca Kowaad</label>
                                                            <asp:TextBox class="form-control" name="example-text-input" ID="first_name" runat="server" placeHolder="Gali Magacaaga Kowaad"></asp:TextBox>
                                                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Gali Magacaaga Kowaad" ControlToValidate="first_name" Display="Dynamic"></asp:RequiredFieldValidator>

                                                        </div>                                                  
                                                </div>
                                                </div>
                                            <div class="col-xl-5">
                                                <div class="row">
                                                    <div class="col-md-12 col-xl-12">
                                                        <div class="mb-3">
                                                            <label class="form-label">Magaca Labaad </label>
                                                            <asp:TextBox class="form-control  " name="example-text-input" ID="middle_name" runat="server" placeHolder="Gali Magacaaga Labaad"></asp:TextBox>
                                                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Gali Magacaaga Labaad" ControlToValidate="middle_name" Display="Dynamic"></asp:RequiredFieldValidator>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-7">
                                                <div class="row">
                                                    <div class="mb-3">
                                                        <label class="form-label">Magaca Seddexaad</label>
                                                        <asp:TextBox class="form-control  " name="example-text-input" ID="last_name" runat="server" placeHolder="Gali Magacaaga Saddexaad "></asp:TextBox>
                                                        <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Gali Magacaaga Saddexaad" ControlToValidate="last_name" Display="Dynamic"></asp:RequiredFieldValidator>
                                                    </div>                                                  
                                                </div>
                                            </div>
                                            <div class="col-xl-4">
                                                <div class="row">
                                                    <div class="col-md-12 col-xl-12">
                                                        <div class="mb-3">
                                                            <div class="form-label">Jinsiga</div>
                                                            <asp:DropDownList class="form-select" ID="gender" runat="server">
                                                                <asp:ListItem Value="-1">Dooro Jinsiga....</asp:ListItem>
                                                                <asp:ListItem>Lab</asp:ListItem>
                                                                <asp:ListItem>Dheddig</asp:ListItem>
                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Dooro Jinsigaaga." ControlToValidate="gender" InitialValue="-1" Display="Dynamic"></asp:RequiredFieldValidator>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-11">
                                                <div class="row">
                                                    <div class="mb-3">
                                                        <label class="form-label">Taleefoonka</label>
                                                        <asp:TextBox class="form-control  " name="example-text-input" ID="tellefonka" runat="server" placeHolder="Gali Taleefoonkaaga"></asp:TextBox>
                                                        <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Gali Taleefoonkaaga." ControlToValidate="tellefonka" Display="Dynamic"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>

                                            </div>                               
                                            <div class="col-xl-11">
                                                <div class="row">
                                                    <div class="col-md-12 col-xl-12">
                                                        <div class="mb-3">
                                                            <label class="form-label">Email</label>
                                                            <asp:TextBox class="form-control  " name="example-text-input" ID="email" runat="server" placeHolder="Gali Email-kaaga" TextMode="Email"></asp:TextBox>
                                                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Soo gali Email-kaaga" ControlToValidate="email" Display="Dynamic"></asp:RequiredFieldValidator>
                                                            <asp:CustomValidator ID="CustomValidator1" runat="server" CssClass="text-danger" ControlToValidate="email" ErrorMessage="Email-kan horey ayuu u jiray" Display="Dynamic" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            </div>                             
                                     
                                        </div>
                                     
                                               <div class="col-6 col-sm-4 col-md-2 col-xl mb-3 w-100 d-flex justify-content-center">
                                                   <asp:Button class="btn btn-success w-25" ID="Button2" runat="server" Text="Create account" OnClick="Button2_Click" />
                                             </div>
                                        <div class="col-xl-12 mb-5 ">
                                            <p class="text-truncate text-center">
                                                I have already an account. <a href="SignIn.aspx">Sign In.</a>
                                            </p>
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
                  <a href="." class="link-secondary">Guryosamo</a>.
                  All rights reserved.
                                </li>
                                <li class="list-inline-item">
                                    <a href="./changelog.html" class="link-secondary" rel="noopener">v1.0.0-beta 
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </footer>
    </form>
      <script src="../dist/js/tabler.min.js"></script>
     <script src="../dist/js/demo.min.js"></script>
</body>
</html>
