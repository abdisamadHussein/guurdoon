<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgetPassword.aspx.cs" Inherits="Guryosamo.Auth.forgetPassword" %>

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
                                                    <div class="mb-3">
                                                        <label class="form-label">Enter your email address</label>
                                                        <asp:TextBox CssClass="form-control " ID="email" runat="server" TextMode="Email" placeHolder="Gali email address"></asp:TextBox>
                                                        <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Soo gali eamil addrees." ControlToValidate="email" Display="Dynamic"></asp:RequiredFieldValidator>

                                                    </div>
                                                    
                                                </div>
                                                <div>
                                                    <asp:Button class="btn btn-success w-50" ID="Button1" runat="server" Text="Forget" OnClick="Button1_Click"  />
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
            </div>
        </div>
        
    </form>
</body>
</html>
