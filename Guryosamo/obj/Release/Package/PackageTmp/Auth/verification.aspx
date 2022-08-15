<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="verification.aspx.cs" Inherits="Guryosamo.Auth.verification" %>

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
                                        <div class="col" accesskey="public">
                                            <h2 class="page-title">Sameyso Akoon Gaarah
                                            </h2>
                                            <p>Create Account</p> </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-xl-6">
                                            <div class="row">
                                                <div class="mb-3">
                                                    <label class="form-label">Magaca Kowaad</label>
                                                    <asp:TextBox class="form-control" name="example-text-input" ID="first_name" runat="server" placeHolder="Gali magacaaga kowaad" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-5">
                                            <div class="row">
                                                <div class="col-md-12 col-xl-12">
                                                    <div class="mb-3">
                                                        <label class="form-label">Magaca Labaad </label>
                                                        <asp:TextBox class="form-control  " name="example-text-input" ID="middle_name" runat="server" placeHolder="Gali magacaaga labaad" ReadOnly="True"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-7">
                                            <div class="row">
                                                <div class="mb-3">
                                                    <label class="form-label">Magaca Seddexaad</label>
                                                    <asp:TextBox class="form-control  " name="example-text-input" ID="last_name" runat="server" placeHolder="Gali Magacaaga saddexaad " ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-4">
                                            <div class="row">
                                                <div class="col-md-12 col-xl-12">
                                                    <div class="mb-3">
                                                        <div class="form-label">Jinsiga</div>
                                                        <asp:TextBox class="form-control  " name="example-text-input" ID="gender" runat="server" placeHolder="Jinsiga" ReadOnly="True"></asp:TextBox>

                                                       
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-11">
                                            <div class="row">
                                                <div class="mb-3">
                                                    <label class="form-label">Taleefonka</label>
                                                    <asp:TextBox class="form-control  " name="example-text-input" ID="tellefonka" runat="server" placeHolder="Taleefonka" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-11">
                                            <div class="row">
                                                <div class="col-md-12 col-xl-12">
                                                    <div class="mb-3">
                                                        <label class="form-label">Email</label>
                                                        <asp:TextBox class="form-control  " name="example-text-input" ID="email" runat="server" placeHolder="email" TextMode="Email" ReadOnly="True"></asp:TextBox>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-11">
                                            <div class="row">
                                                <div class="col-md-12 col-xl-12">
                                                    <div class="mb-3">
                                                        <label class="form-label">Sameyso Furo Kuu Gaarah</label>
                                                        <asp:TextBox class="form-control  " name="example-text-input" ID="password" runat="server" placeHolder="Gali Furahaaga" TextMode="Password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Gali Furahaaga" ControlToValidate="password" Display="Dynamic"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-11">
                                            <div class="row">
                                                <div class="col-md-12 col-xl-12">
                                                    <div class="mb-3">
                                                        <label class="form-label">Hubi Furahaaga</label>
                                                        <asp:TextBox class="form-control" name="example-text-input" ID="confirmpassword" runat="server" placeHolder="Hubi Furahaaga" TextMode="Password"></asp:TextBox>
                                                        <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator8" runat="server" ErrorMessage="Hubi Furahaaga" ControlToValidate="confirmpassword" Display="Dynamic"></asp:RequiredFieldValidator>
                                                        <asp:CompareValidator CssClass="text-danger"  ID="CompareValidator1" runat="server" ErrorMessage="Furayaashu Wey kala Duwanyihiin" ControlToCompare="password" ControlToValidate="confirmpassword" Display="Dynamic"></asp:CompareValidator>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                     
                                    </div>
                                </div>
                                <div class="col-6 col-sm-4 col-md-2 col-xl mb-3 w-100 d-flex justify-content-center">
                                    <asp:Button class="btn btn-success w-25" ID="Button1" runat="server" Text="save" OnClick="Button1_Click" />
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
</body>
</html>
