<%@ Page Title="" Language="C#" MasterPageFile="~/Acount/Acount.Master" AutoEventWireup="true" CodeBehind="UserInfoSetting.aspx.cs" Inherits="Guryosamo.Acount.UserInfoSetting" %>
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
                 <div class="row align-items-center">
              <div class="col">
                  <asp:HyperLink ID="HyperLink1" class="page-title" runat="server" NavigateUrl="~/Acount/Profile.aspx"> 
                      <!-- Download SVG icon from http://tabler-icons.io/i/arrow-left -->
	                <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><line x1="5" y1="12" x2="19" y2="12" /><line x1="5" y1="12" x2="11" y2="18" /><line x1="5" y1="12" x2="11" y2="6" /></svg>
                      Back</asp:HyperLink>
                
              </div>
            </div>
            </div>
        </div>
        <div class="page-body" id="Dhedig" runat="server" accesskey="public">
            <div class="container-narrow">
                <div class="col-12">
                </div>
                <div class="row row-cards card d-flex  align-content-center">
                    <div class="col-12">
                        <div class="card-header">
                            <div class="row d-flex align-items-center justify-content-center">
                                <div class="col">
                                    <h2 class="page-title">Profile Information 
                                    </h2>
                                    <p>xogtaada oo dhameystiran.</p>
                                </div>
                            </div>

                        </div>
                        <div class="card-body">
                             <div class="row border mb-3 mt-4 p-3 position-relative border-2">
                             <div style="display:inline-block; width:15%; position:absolute; top:-13px;left:30px ; font-size:14px;padding:2px;padding-left:5px; background-color:#fff; border-radius:10px">Warbixin</div>

                                      <div class="col-xl-6">
                                     <div class="row">
                                          <div class="mb-3">
                                             <div class="form-label">Da'da </div>
                                              <asp:DropDownList class="form-select" ID="choosen_age" runat="server">
                                                  <asp:ListItem Value="-1" >Dooro ...</asp:ListItem>
                                                 <asp:ListItem Value="1" >17-20</asp:ListItem>
                                                  <asp:ListItem  Value="2">21-25</asp:ListItem>
                                                  <asp:ListItem Value="3">26-30</asp:ListItem>
                                                  <asp:ListItem Value="4">31-35</asp:ListItem>
                                                  <asp:ListItem Value="5">36-40</asp:ListItem>
                                                  <asp:ListItem Value="6">41-45</asp:ListItem>
                                                  <asp:ListItem Value="7">46-50</asp:ListItem>
                                                  <asp:ListItem Value="8">50+</asp:ListItem>
                                              </asp:DropDownList>
                                            
                                             <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator9" runat="server" ErrorMessage="Dooro da'da." Display="Dynamic" ControlToValidate="choosen_age" Font-Size="Small" InitialValue="-1"></asp:RequiredFieldValidator>
                                         </div>
                                     </div>
                                 </div>
                                            <div class="col-xl-6">
                                     <div class="row">
                                         <div class="mb-3">
                                             <div class="form-label">Marxadalada guurka </div>
                                             <asp:DropDownList class="form-select" ID="w_material_status" runat="server">
                                                 <asp:ListItem Value="-1" >Soo dooro....</asp:ListItem>
                                                 <asp:ListItem>Carmal</asp:ListItem>
                                                 <asp:ListItem>Gashaanti</asp:ListItem>
                                             </asp:DropDownList>
                                             <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator4" runat="server" ErrorMessage="dooro marxalada guurka." Display="Dynamic" ControlToValidate="m_material_status" Font-Size="Small" InitialValue="-1"></asp:RequiredFieldValidator>
                                              <asp:DropDownList class="form-select" ID="m_material_status" runat="server">
                                                 <asp:ListItem Value="-1">Soo dooro....</asp:ListItem>
                                                 <asp:ListItem>Doob</asp:ListItem>
                                                 <asp:ListItem>Xaasle</asp:ListItem>
                                                 <asp:ListItem>Guur soomaray</asp:ListItem>
                                             </asp:DropDownList>
                                             <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator11" runat="server" ErrorMessage="dooro marxalada guurka." Display="Dynamic" ControlToValidate="w_material_status" Font-Size="Small" InitialValue="-1"></asp:RequiredFieldValidator>
                                         </div>
                                         
                                     </div>
                                 </div>
                                      <div class="col-xl-12">
                                     <div class="row">
                                         <div class="mb-3">
                                             <div class="form-label">Deegaanka</div>
                                              <asp:TextBox class="form-control  " name="example-text-input" ID="choosen_location" runat="server" placeHolder="Gali deekaanka aad ku nooshahay"></asp:TextBox>
                                             <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator8" runat="server" ErrorMessage="soo gali deekaanka" Display="Dynamic" ControlToValidate="choosen_location" Font-Size="Small"></asp:RequiredFieldValidator>
                                         </div>
                                     </div>
                                 </div>
                                    
                                <div class="col-xl-12">
                                    <div class="row">
                                        <div class="mb-3">
                                            <div class="form-label">Herka  waxbarashada </div>
                                            <asp:DropDownList class="form-select" ID="choosen_education_level" runat="server" AutoPostBack="True">
                                                 <asp:ListItem Value ="-1"  >dooro heerka waxbarashada</asp:ListItem>
                                                <asp:ListItem>School</asp:ListItem>
                                                <asp:ListItem>Bachelor</asp:ListItem>
                                                <asp:ListItem>Master</asp:ListItem>   
                                                <asp:ListItem>PHD</asp:ListItem>        
                                                <asp:ListItem>Waxba</asp:ListItem>         
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator5" runat="server" ErrorMessage="soo dooro heerka waxbarashada." Display="Dynamic" ControlToValidate="choosen_education_level" Font-Size="Small" InitialValue="-1"></asp:RequiredFieldValidator>
                                        </div>

                                    </div>

                                </div>

                                <div id="shaqada" runat="server">
                                <div class="col-xl-12">
                                    <div class="row">
                                        <div class="mb-3">
                                            <div class="form-label">Goobta shqaqda </div>
                                            <asp:TextBox class="form-control  " name="example-text-input" ID="choosen_workplace" runat="server" placeHolder="Gali Goobta shaqada"></asp:TextBox>
                                            <asp:RequiredFieldValidator CssClass="text-danger" runat="server" ID="workplaceValidator" ErrorMessage="soo gali goobta shaqada" Display="Dynamic" ControlToValidate="choosen_workplace"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-xl-12">
                                    <div class="row">
                                         <div class="mb-3">
                                            <div class="form-label">Jagadda </div>
                                            <asp:TextBox class="form-control  " name="example-text-input" ID="choosen_title" runat="server" placeHolder="Gali jagadaada"></asp:TextBox>
                                        </div>
                                        <asp:RequiredFieldValidator CssClass="text-danger" runat="server" ID="RequiredFieldValidator7" ErrorMessage="soo gali jagadaada." Display="Dynamic" ControlToValidate="choosen_title"></asp:RequiredFieldValidator>
                                    </div>
                                </div>
                      
                                 </div>
                               
                               
                            </div>

                              <div class="row border mb-3 mt-4 p-3 position-relative border-2">
                             <div style="display:inline-block; width:18%; position:absolute; top:-13px;left:30px ; font-size:16px;padding:2px; background-color:#fff; text-align:center; border-radius:50px">Astaamaha</div>
                            
                                
                              
                                 <div class="col-xl-4">
                                     <div class="row">
                                         <div class="mb-3">
                                             <div class="form-label">Dhirirka</div>
                                             <asp:DropDownList class="form-select" ID="choosen_height" runat="server">
                                                <asp:ListItem Value="-1" >Dooro dhirirka</asp:ListItem>
                                                 <asp:ListItem>1.50m</asp:ListItem>
                                                 <asp:ListItem>1.55m</asp:ListItem>
                                                 <asp:ListItem>1.60m</asp:ListItem>
                                                 <asp:ListItem>1.65m</asp:ListItem>
                                                 <asp:ListItem>1.70m</asp:ListItem>
                                                 <asp:ListItem>1.75m</asp:ListItem>
                                                 <asp:ListItem>1.80m</asp:ListItem>
                                                 <asp:ListItem>1.85m</asp:ListItem>
                                                 <asp:ListItem>1.90m</asp:ListItem>
                                                 <asp:ListItem>1.95m</asp:ListItem>
                                                 <asp:ListItem>2.00m+</asp:ListItem>
                                             </asp:DropDownList>
                                             <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="dooro dhirirkaaga" Display="Dynamic" ControlToValidate="choosen_height" InitialValue="-1" Font-Size="Small"></asp:RequiredFieldValidator>
                                           
                                         </div>
                                     </div>
                                 </div>
                                 <div class="col-xl-4">
                                     <div class="row">
                                         <div class="mb-4">
                                             <div class="form-label">Culeyska</div>
                                             <asp:DropDownList class="form-select" ID="choosen_weight" runat="server">
                                                 <asp:ListItem Value="-1" >dooro culeyska</asp:ListItem>
                                                 <asp:ListItem>45kg-50kg</asp:ListItem>
                                                 <asp:ListItem>51kg-55kg</asp:ListItem>
                                                 <asp:ListItem>56kg-60kg</asp:ListItem>
                                                 <asp:ListItem>61kg-65kg</asp:ListItem>
                                                 <asp:ListItem>65kg-70kg</asp:ListItem>
                                                 <asp:ListItem>71kg-75kg</asp:ListItem>
                                                 <asp:ListItem>76kg-80kg</asp:ListItem>
                                                 <asp:ListItem>81kg-85kg</asp:ListItem>
                                                 <asp:ListItem>86kg-90kg</asp:ListItem>
                                                 <asp:ListItem>91kg-95kg</asp:ListItem>
                                                 <asp:ListItem>96kg-99kg</asp:ListItem>
                                                 <asp:ListItem>100kg+</asp:ListItem>
                                             </asp:DropDownList>
                                             <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="dooro culeyskaaga" Display="Dynamic" ControlToValidate="choosen_weight" InitialValue="-1" Font-Size="Small"></asp:RequiredFieldValidator>

                                         </div>
                                     </div>
                                 </div>
                                 <div class="col-xl-4">
                                     <div class="row">
                                         <div class="mb-3">
                                             <div class="form-label">Midabka</div>
                                             <asp:DropDownList class="form-select" ID="choosen_color" runat="server">
                                                 <asp:ListItem Value="-1" >dooro midabka</asp:ListItem>
                                                 <asp:ListItem>Madow</asp:ListItem>
                                                 <asp:ListItem>Maariin</asp:ListItem>
                                                 <asp:ListItem>Cadaan</asp:ListItem>
                                             </asp:DropDownList>
                                             <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="dooro midabkaaga" Display="Dynamic" ControlToValidate="choosen_color" InitialValue="-1" Font-Size="Small"></asp:RequiredFieldValidator>
                                         </div>
                                     </div>
                                 </div>
                                
                                 </div>
                            <div class="col-6 col-sm-4 col-md-2 col-xl-auto mb-3 w-100 d-flex justify-content-center">
                               
                                    <asp:Button class="btn btn-success w-25" ID="w_savae" runat="server" Text="Update" />
                            </div>

                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> 
</asp:Content>
