<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Guryosamo.Auth.SignIn" %>

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

        var versionUpdate = (new Date()).getTime();
        var script = document.createElement("script");
        script.type = "text/javascript";
        script.src = "/myProduct/scripts/myUpdates.js?v=" + versionUpdate;
        document.body.appendChild(script);
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
           <%-- <header class="navbar navbar-expand-md navbar-light d-print-none">
                <div class="container-xl">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-menu">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <h1 class="navbar-brand navbar-brand-autodark d-none-navbar-horizontal pe-0 pe-md-3">
                        <a href="." class="mx-2">
                            <img src="../static/logo.png" width="110" height="32" alt="Tabler" class="navbar-brand-image" />
                        </a>
                        Gruyosamo
                    </h1>

                </div>
            </header>--%>

            <div class="page-wrapper">
                <div class="container-xl">
                    <!-- Page title -->

                </div>
                <div class="page-body">
                    <div class="container">
                        <div class="card  mt-5">
                          <div class="d-flex">
                          <div class=" col-6  bg-success-lt d-flex align-content-center">
                               <div class="m-auto ">
                             <image src="../img/GuryoSamo_Pre.png" style="width:400px; height:200px; position: center" />
                               </div>
                           </div>
                          <div class="col-6">
                       
                                <div class="card-body">
                                     <div class="d-flex justify-content-center mb-3">
                      <span class="avatar avatar-md avatar-rounded align-self-center  bg-success" style="background-image: url(./static/avatars/010m.jpg)">
	<svg xmlns="http://www.w3.org/2000/svg" class="icon text-white" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><circle cx="12" cy="12" r="9" /><circle cx="12" cy="10" r="3" /><path d="M6.168 18.849a4 4 0 0 1 3.832 -2.849h4a4 4 0 0 1 3.834 2.855" /></svg>

                      </span>
                    </div>
                              
                                <div class="row d-flex  justify-content-center">
                                    <div class="col-xl-6 d-flex flex-column justify-content-center">
                                        <div class="mb-2">
                                            <label class="form-label">Email address</label>
                                            <asp:TextBox CssClass="form-control " ID="email" runat="server" TextMode="Email" placeHolder="Gali Email-kaaga"></asp:TextBox>
                                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Gali Email-kaaga" ControlToValidate="email" Display="Dynamic"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="mb-2">
                                            <label class="form-label">Password</label>
                                            <asp:TextBox CssClass="form-control" ID="password" runat="server" TextMode="Password" placeHolder="Gali Furaha Sirta"></asp:TextBox>
                                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Gali Furaha Sirta" ControlToValidate="Password" Display="Dynamic"></asp:RequiredFieldValidator>

                                        </div>
                                        <div class="d-flex flex-column justify-content-center mt-2">
                                            <asp:Button class="btn btn-success btn-lg align-self-center w-100" ID="Button1" runat="server" Text="Log In" OnClick="Button1_Click" />
                                            <p class="text-truncate mt-2 text-center"><a href="forgetPassword.aspx">Forget Password</a> </p>
                                            <p class="text-truncate text-center">
                                                Don't have an account? <a href="SignUp.aspx">Create new account</a>
                                            </p>
                                        </div>
                                    </div>
                                    
                                </div>

                                </div>
                                  <p class="text-truncate mt-2 text-center text-danger" id="result" runat="server"></p>
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
                            <li class="list-inline-item">Copyright &copy; Guryosamo2021
                  <a href="." class="link-secondary"></a>.
                  All rights reserved.
                            </li>
                            <%--<li class="list-inline-item">
                  <a href="./changelog.html" class="link-secondary" rel="noopener">
                    v1.0.0-beta5
                  </a>
                </li>--%>
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
