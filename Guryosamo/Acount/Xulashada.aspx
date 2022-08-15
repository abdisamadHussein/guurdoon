<%@ Page Title="" Language="C#" MasterPageFile="~/Acount/Acount.Master" AutoEventWireup="true" CodeBehind="Xulashada.aspx.cs" Inherits="Guryosamo.Acount.Xulashada" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <script type="text/javascript">
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
       
  
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-wrapper">
        <div class="container-xl">
            <!-- Page title -->
            <div class="page-header d-print-none">
                   <div class="row align-items-center ">
              <div class="col">
                  <asp:HyperLink ID="HyperLink1" class="page-title d-inline-block" runat="server" NavigateUrl="~/Acount/Profile.aspx"> 
                      <!-- Download SVG icon from http://tabler-icons.io/i/arrow-left -->
	                <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><line x1="5" y1="12" x2="19" y2="12" /><line x1="5" y1="12" x2="11" y2="18" /><line x1="5" y1="12" x2="11" y2="6" /></svg>
                      </asp:HyperLink>
              </div>
            </div>
            </div>
           
        </div>

        <div class="page-body" id="Lab" runat="server" accesskey="public">
            <div class="container-narrow">
                <div class="row row-cards card d-flex  align-content-center p-2">
                    <div class="col-12">
                        <div class="card-header">
                            <div class="row d-flex align-items-center justify-content-center">
                                <div class="col">
                                    <h2 class="page-title">GALKA
                                    </h2>
                                    <p>ASTAAMAHA XULASHADA</p>
                                </div>
                            </div>

                        </div>
                        <div class="card-body">
                            <div class="row border mb-3 mt-4 p-3 position-relative border-2">
                                <div style="display: inline-block; width: 15%; position: absolute; top: -13px; left: 30px; font-size: 14px; padding: 2px; padding-left: 5px; background-color: #fff; border-radius: 10px">Warbixinta</div>
                                <div class="col-xl-6">
                                    <div class="row">
                                        <div class="mb-3">
                                            <div class="form-label">Da'da </div>
                                            <asp:DropDownList class="form-select" ID="m_age" runat="server">
                                                <asp:ListItem Value="-1">Dooro Da'da</asp:ListItem>
                                                  <asp:ListItem>17-20</asp:ListItem>
                                                  <asp:ListItem>21-25</asp:ListItem>
                                                  <asp:ListItem>26-30</asp:ListItem>
                                                  <asp:ListItem>31-35</asp:ListItem>
                                                  <asp:ListItem>36-40</asp:ListItem>
                                                  <asp:ListItem>41-45</asp:ListItem>
                                                  <asp:ListItem>46-50</asp:ListItem>
                                                  <asp:ListItem>+51</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator9" runat="server" ErrorMessage="Dooro da'da" Display="Dynamic" ControlToValidate="m_age" Font-Size="Small" InitialValue="-1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="row">
                                        <div class="mb-3">
                                            <div class="form-label">Marxaladda Guurka </div>
                                            <asp:DropDownList class="form-select" ID="m_mariageStatus" runat="server">
                                                <asp:ListItem Value="-1">Dooro</asp:ListItem>
                                                <asp:ListItem>Carmal (Garoob)</asp:ListItem>
                                                <asp:ListItem>Gashaanti (Gabar)</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Dooro Marxaladda Guurka" Display="Dynamic" ControlToValidate="m_mariageStatus" Font-Size="Small" InitialValue="-1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12">
                                    <div class="row">
                                        <div class="mb-3">
                                            <div class="form-label">Heerka Waxbarashada </div>
                                            <asp:DropDownList class="form-select" ID="m_educationLevel" runat="server">
                                                 <asp:ListItem Value ="-1">Dooro Heerka Waxbarashada</asp:ListItem>
                                                <asp:ListItem>Diini</asp:ListItem>
                                                <asp:ListItem>Xirfadle</asp:ListItem>
                                                <asp:ListItem>School</asp:ListItem>
                                                <asp:ListItem>Bachelor</asp:ListItem>
                                                <asp:ListItem>Master</asp:ListItem>   
                                                <asp:ListItem>PHD</asp:ListItem>        
                                                <asp:ListItem>Waxba</asp:ListItem> 
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Dooro Heerka Waxbarashada" Display="Dynamic" ControlToValidate="m_educationLevel" Font-Size="Small" InitialValue="-1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row border mb-3 mt-4 p-3 position-relative border-2">
                                <div style="display: inline-block; width: 18%; position: absolute; top: -13px; left: 30px; font-size: 16px; padding: 2px; background-color: #fff; text-align: center; border-radius: 50px">Astaamaha</div>
                                <div class="col-xl-4">
                                    <div class="row">
                                        <div class="mb-3">
                                            <div class="form-label">Dhirirka (m)</div>
                                            <asp:DropDownList class="form-select" ID="m_height" runat="server">
                                                <asp:ListItem Value="-1">Dooro Dhirirka</asp:ListItem>
                                                 <asp:ListItem>1.50</asp:ListItem>
                                                 <asp:ListItem>1.55</asp:ListItem>
                                                 <asp:ListItem>1.60</asp:ListItem>
                                                 <asp:ListItem>1.65</asp:ListItem>
                                                 <asp:ListItem>1.70</asp:ListItem>
                                                 <asp:ListItem>1.75</asp:ListItem>
                                                 <asp:ListItem>1.80</asp:ListItem>
                                                 <asp:ListItem>1.85</asp:ListItem>
                                                 <asp:ListItem>1.90</asp:ListItem>
                                                 <asp:ListItem>1.95</asp:ListItem>
                                                 <asp:ListItem>+2.00</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Dooro Dhirirka" Display="Dynamic" ControlToValidate="m_height" InitialValue="-1" Font-Size="Small"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="row">
                                        <div class="mb-4">
                                            <div class="form-label">Culeyska (Kg)</div>
                                            <asp:DropDownList class="form-select" ID="m_weight" runat="server">
                                               <asp:ListItem Value="-1">Dooro Culeyska</asp:ListItem>
                                                 <asp:ListItem>45-50</asp:ListItem>
                                                 <asp:ListItem>51-55</asp:ListItem>
                                                 <asp:ListItem>56-60</asp:ListItem>
                                                 <asp:ListItem>61-65</asp:ListItem>
                                                 <asp:ListItem>65-70</asp:ListItem>
                                                 <asp:ListItem>71-75</asp:ListItem>
                                                 <asp:ListItem>76-80</asp:ListItem>
                                                 <asp:ListItem>81-85</asp:ListItem>
                                                 <asp:ListItem>86-90</asp:ListItem>
                                                 <asp:ListItem>91-95</asp:ListItem>
                                                 <asp:ListItem>96-99</asp:ListItem>
                                                 <asp:ListItem>+100</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Dooro Culeyska" Display="Dynamic" ControlToValidate="m_weight" InitialValue="-1" Font-Size="Small"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="row">
                                        <div class="mb-3">
                                            <div class="form-label">Midabka</div>
                                            <asp:DropDownList class="form-select" ID="m_color" runat="server">
                                                <asp:ListItem Value="-1">Dooro Midabka</asp:ListItem>
                                                <asp:ListItem>Madow</asp:ListItem>
                                                <asp:ListItem>Maarriin</asp:ListItem>
                                                <asp:ListItem>Caddaan</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Dooro Midabka" Display="Dynamic" ControlToValidate="m_color" InitialValue="-1" Font-Size="Small"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-12 ms-3">
                                <div class="row">
                                    <div class="mb-3">
                                        <div class="form-label">Ma shaqeysaa gabadha aad dooneyso?</div>
                                        <div>
                                            <label class="form-check form-check-inline">
                                                <asp:RadioButton class="form-check-input" ID="haa" runat="server" GroupName="doesSheWork" />
                                                <span class="form-label mb-0" id="haaLabel" runat="server">Haa</span>
                                            </label>
                                            <label class="form-check form-check-inline">
                                                <asp:RadioButton class="form-check-input" ID="maya" runat="server" GroupName="doesSheWork" />
                                                <span class="form-label mb-0" id="mayaLabel" runat="server">Maya</span>
                                            </label>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-12 ms-3">
                                <div class="row">
                                    <div class="mb-3">
                                        <div class="form-label">Cunto karinta sidee ku tahay gabadha aad dooneyso?</div>
                                        <div>
                                            <label class="form-check">
                                                <asp:RadioButton class="form-check-input" ID="high" runat="server" GroupName="cooking" />
                                                <span class="form-label mb-0" id="highLabel" runat="server">100%</span>
                                            </label>
                                            <label class="form-check">
                                                <asp:RadioButton class="form-check-input" ID="moderate" runat="server" GroupName="cooking" />
                                                <span class="form-label mb-0" id="moderateLabel" runat="server">50%</span>
                                            </label>
                                            <label class="form-check">
                                                <asp:RadioButton class="form-check-input" ID="low" runat="server" GroupName="cooking" />
                                                <span class="form-label mb-0" id="lowLabel" runat="server">25%</span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-6 col-sm-4 col-md-2 col-xl-auto mb-3 w-100 d-flex justify-content-center">
                                <asp:Button class="btn btn-success w-25" ID="w_savae" runat="server"  Text="Submit" OnClick="m_svae_Click"  />
                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="page-body" id="Dhedig" runat="server" accesskey="public">
            <div class="container-narrow">
                <div class="row row-cards card d-flex  align-content-center p-2">
                    <div class="col-12">
                        <div class="card-header">
                            <div class="row d-flex align-items-center justify-content-center">
                                <div class="col">
                                    <h2 class="page-title">GALKA
                                    </h2>
                                    <p>ASTAAMAHA XULASHADA</p>
                                </div>
                            </div>

                        </div>
                        <div class="card-body">
                            <div class="row border mb-3 mt-4 p-3 position-relative border-2">
                                <div style="display: inline-block; width: 15%; position: absolute; top: -13px; left: 30px; font-size: 14px; padding: 2px; padding-left: 5px; background-color: #fff; border-radius: 10px">Warbixinta</div>
                                <div class="col-xl-6">
                                    <div class="row">
                                        <div class="mb-3">
                                            <div class="form-label">Da'da </div>
                                            <asp:DropDownList class="form-select" ID="w_age" runat="server">
                                                <asp:ListItem Value="-1">Dooro Da'da</asp:ListItem>
                                                  <asp:ListItem>17-20</asp:ListItem>
                                                  <asp:ListItem>21-25</asp:ListItem>
                                                  <asp:ListItem>26-30</asp:ListItem>
                                                  <asp:ListItem>31-35</asp:ListItem>
                                                  <asp:ListItem>36-40</asp:ListItem>
                                                  <asp:ListItem>41-45</asp:ListItem>
                                                  <asp:ListItem>46-50</asp:ListItem>
                                                  <asp:ListItem>50+</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Dooro Da'da" Display="Dynamic" ControlToValidate="w_age" Font-Size="Small" InitialValue="-1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="row">
                                        <div class="mb-3">
                                            <div class="form-label">Marxaladda Guurka </div>
                                            <asp:DropDownList class="form-select" ID="w_mariageStatus" runat="server">
                                                <asp:ListItem Value="-1">Dooro</asp:ListItem>
                                                <asp:ListItem>Doob</asp:ListItem>
                                                 <asp:ListItem>Xaasle</asp:ListItem>
                                                 <asp:ListItem>Guursaday</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Dooro Marxaladda Guurka" Display="Dynamic" ControlToValidate="w_mariageStatus" Font-Size="Small" InitialValue="-1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12">
                                    <div class="row">
                                        <div class="mb-3">
                                            <div class="form-label">Heerka  Waxbarashada </div>
                                            <asp:DropDownList class="form-select" ID="w_educationLevel" runat="server">
                                                <asp:ListItem Value ="-1">Dooro Heerka Waxbarashada</asp:ListItem>
                                                <asp:ListItem>Diini</asp:ListItem>
                                                <asp:ListItem>Xirfadle</asp:ListItem>
                                                <asp:ListItem>School</asp:ListItem>
                                                <asp:ListItem>Bachelor</asp:ListItem>
                                                <asp:ListItem>Master</asp:ListItem>   
                                                <asp:ListItem>PHD</asp:ListItem>        
                                                <asp:ListItem>Waxba</asp:ListItem> 
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator8" runat="server" ErrorMessage="Dooro Heerka Waxbarashada" Display="Dynamic" ControlToValidate="w_educationLevel" Font-Size="Small" InitialValue="-1"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row border mb-3 mt-4 p-3 position-relative border-2">
                                <div style="display: inline-block; width: 18%; position: absolute; top: -13px; left: 30px; font-size: 16px; padding: 2px; background-color: #fff; text-align: center; border-radius: 50px">Astaamaha</div>
                                <div class="col-xl-4">
                                    <div class="row">
                                        <div class="mb-3">
                                            <div class="form-label">Dhirirka (m)</div>
                                            <asp:DropDownList class="form-select" ID="w_height" runat="server">
                                            <asp:ListItem Value="-1">Dooro Dhirirka</asp:ListItem>
                                                <asp:ListItem>1.50</asp:ListItem>
                                                <asp:ListItem>1.55</asp:ListItem>
                                                <asp:ListItem>1.60</asp:ListItem>
                                                <asp:ListItem>1.65</asp:ListItem>
                                                <asp:ListItem>1.70</asp:ListItem>
                                                <asp:ListItem>1.75</asp:ListItem>
                                                <asp:ListItem>1.80</asp:ListItem>
                                                <asp:ListItem>1.85</asp:ListItem>
                                                <asp:ListItem>1.90</asp:ListItem>
                                                <asp:ListItem>1.95</asp:ListItem>
                                                <asp:ListItem>+2.00</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator10" runat="server" ErrorMessage="Dooro Dhirirka" Display="Dynamic" ControlToValidate="w_height" InitialValue="-1" Font-Size="Small"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="row">
                                        <div class="mb-4">
                                            <div class="form-label">Culeyska (Kg)</div>
                                            <asp:DropDownList class="form-select" ID="w_weight" runat="server">
                                                <asp:ListItem Value="-1">Dooro Culeyska</asp:ListItem>
                                                <asp:ListItem>45-50</asp:ListItem>
                                                <asp:ListItem>51-55</asp:ListItem>
                                                <asp:ListItem>56-60</asp:ListItem>
                                                <asp:ListItem>61-65</asp:ListItem>
                                                <asp:ListItem>65-70</asp:ListItem>
                                                <asp:ListItem>71-75</asp:ListItem>
                                                <asp:ListItem>76-80</asp:ListItem>
                                                <asp:ListItem>81-85</asp:ListItem>
                                                <asp:ListItem>86-90</asp:ListItem>
                                                <asp:ListItem>91-95</asp:ListItem>
                                                <asp:ListItem>96-99</asp:ListItem>
                                                <asp:ListItem>+100</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator11" runat="server" ErrorMessage="Dooro Culeyska" Display="Dynamic" ControlToValidate="w_weight" InitialValue="-1" Font-Size="Small"></asp:RequiredFieldValidator>

                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="row">
                                        <div class="mb-3">
                                            <div class="form-label">Midabka</div>
                                            <asp:DropDownList class="form-select" ID="w_colorSkin" runat="server">
                                                <asp:ListItem Value="-1">Dooro Midabka</asp:ListItem>
                                                <asp:ListItem>Madow</asp:ListItem>
                                                <asp:ListItem>Maarriin</asp:ListItem>
                                                <asp:ListItem>Caddaan</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator12" runat="server" ErrorMessage="Dooro Midabkaaga" Display="Dynamic" ControlToValidate="w_colorSkin" InitialValue="-1" Font-Size="Small"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </div>
                            </div>           
                            <div class="col-xl-12 ms-3">
                                <div class="row">
                                    <div class="mb-3">
                                        <div class="form-label">Kaalmada howsha guriga sidee ku yahay ninka aad dooneyso?</div>
                                        <div>
                                            <label class="form-check">
                                                <asp:RadioButton class="form-check-input" ID="support1" runat="server" GroupName="support" />
                                                <span class="form-label mb-0" id="support1label" runat="server">100%</span>
                                            </label>
                                            <label class="form-check">
                                                <asp:RadioButton class="form-check-input" ID="support2" runat="server" GroupName="support" />
                                                <span class="form-label mb-0" id="support2label" runat="server">50%</span>
                                            </label>
                                            <label class="form-check">
                                                <asp:RadioButton class="form-check-input" ID="support3" runat="server" GroupName="support" />
                                                <span class="form-label mb-0" id="support3label" runat="server">25%</span>
                                            </label>

                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-6 col-sm-4 col-md-2 col-xl-auto mb-3 w-100 d-flex justify-content-center">

                                <asp:Button class="btn btn-success w-25" ID="W_save" runat="server" Text="Submit"   OnClick="W_save_Click" />
                          
                                </div>

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
