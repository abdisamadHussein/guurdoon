<%@ Page Title="" Language="C#" MasterPageFile="~/Acount/Acount.Master" AutoEventWireup="true" CodeBehind="_registration.aspx.cs" Inherits="Guryosamo.Acount.registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="page-wrapper">

         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
             <ContentTemplate>

        <div class="page-body">
            <div class="container-xl">
                <div class="row row-cards d-flex justify-content-center">
                    <div class="col-12 col-md-8 col-xl-8  ">
                        <div class="card card-md">
                            <div class="ribbon bg-success">NEW</div>
                            <div class="card-body ">
                                <div class="row align-items-center" id="female_form" runat="server">
                                    <h3 class="h1 ">Ku Soo Dhawaaw Guurdoon</h3>
                                    <div class="markdown text-muted mb-3">
                                        Si aad u sameysid xuslashoooyinka ugana midnoqotid guurdoon
                                        <br />
                                        fadlan buuxi macluumadka hoose.
                                    </div>
                                    <div class="col-12 col-xl-6">
                                        <div class="row">
                                            <div class="mb-3">
                                                <div class="form-label">Da'da </div>
                                                <asp:DropDownList class="form-select" ID="f_age" runat="server">
                                                    <asp:ListItem Value="-1">Dooro Da'daada</asp:ListItem>
                                                    <asp:ListItem>17-20</asp:ListItem>
                                                    <asp:ListItem>21-25</asp:ListItem>
                                                    <asp:ListItem>26-30</asp:ListItem>
                                                    <asp:ListItem>31-35</asp:ListItem>
                                                    <asp:ListItem>36-40</asp:ListItem>
                                                    <asp:ListItem>41-45</asp:ListItem>
                                                    <asp:ListItem>46-50</asp:ListItem>
                                                    <asp:ListItem>+51</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator9" runat="server" ErrorMessage="Dooro Da'da " Display="Dynamic" ControlToValidate="f_age" Font-Size="Small" InitialValue="-1"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-xl-6">
                                        <div class="row">
                                            <div class="mb-3">
                                                <div class="form-label">Marxaladda Guurka </div>
                                                <asp:DropDownList class="form-select" ID="f_material_status" runat="server">
                                                    <asp:ListItem Value="-1">Dooro Marxaladda Guurka</asp:ListItem>
                                                    <asp:ListItem>Carmal (Garoob) </asp:ListItem>
                                                    <asp:ListItem>Gashaanti (gabar) </asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Dooro Marxaladda Guurka " Display="Dynamic" ControlToValidate="f_material_status" Font-Size="Small" InitialValue="-1"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="row">
                                            <div class="mb-3">
                                                <div class="form-label">Deegaanka</div>
                                                <asp:TextBox class="form-control  " name="example-text-input" ID="f_address" runat="server" placeHolder="Gali deekaanka aad ku nooshahay"></asp:TextBox>
                                                <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator8" runat="server" ErrorMessage="Gali deekaanka aad ku nooshahay" Display="Dynamic" ControlToValidate="f_address" Font-Size="Small"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="row">
                                            <div class="mb-3">
                                                <div class="form-label">Heerka  Waxbarashada </div>
                                                <asp:DropDownList class="form-select" ID="f_education_level" runat="server">
                                                    <asp:ListItem Value="-1">Dooro Heerka Waxbarashada</asp:ListItem>
                                                    <asp:ListItem>Diini</asp:ListItem>
                                                    <asp:ListItem>Xirfadle</asp:ListItem>
                                                    <asp:ListItem>School</asp:ListItem>
                                                    <asp:ListItem>Bachelor</asp:ListItem>
                                                    <asp:ListItem>Master</asp:ListItem>
                                                    <asp:ListItem>PHD</asp:ListItem>
                                                    <asp:ListItem>Waxba</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Dooro Heerka Waxbarashada." Display="Dynamic" ControlToValidate="f_education_level" Font-Size="Small" InitialValue="-1"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="row">
                                            <div class="mb-3">
                                                <div class="form-label">Ma shaqeysaa? </div>
                                                <asp:DropDownList class="form-select" ID="f_work" AutoPostBack="true" runat="server">
                                                    <asp:ListItem Value="1">Haa</asp:ListItem>
                                                    <asp:ListItem Value="2">Maya</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator11" runat="server" ErrorMessage="Dooro Heerka Waxbarashada." Display="Dynamic" ControlToValidate="f_work" Font-Size="Small" InitialValue="-1"></asp:RequiredFieldValidator>
                                            </div>

                                        </div>
                                        <div id="work_form" runat="server">
                                            <div class="col-12">
                                                <div class="row">
                                                    <div class="mb-3">
                                                        <div class="form-label">Goobta Shaqada </div>
                                                        <asp:TextBox class="form-control  " name="example-text-input" ID="f_workplace" runat="server" placeHolder="Gali Goobta Shaqada"></asp:TextBox>
                                                        <asp:RequiredFieldValidator CssClass="text-danger" runat="server" ID="workplaceValidator" ErrorMessage="Gali Goobta Shaqada" Display="Dynamic" ControlToValidate="f_workplace"></asp:RequiredFieldValidator>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="col-12">
                                                <div class="row">
                                                    <div class="mb-3">
                                                        <div class="form-label">Jagada </div>
                                                        <asp:TextBox class="form-control  " name="example-text-input" ID="f_job_position" runat="server" placeHolder="Gali Jagadaada"></asp:TextBox>
                                                    </div>
                                                    <asp:RequiredFieldValidator CssClass="text-danger" runat="server" ID="RequiredFieldValidator7" ErrorMessage="Gali Jagadaada " Display="Dynamic" ControlToValidate="f_job_position"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>

                                        </div>

                                    </div>
                                    <div class="col-12 col-xl-4">
                                        <div class="row">
                                            <div class="mb-3">
                                                <div class="form-label">Dhirirka (m)</div>
                                                <asp:DropDownList class="form-select" ID="f_height" runat="server">
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
                                                <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Dooro Dhirirkaaga" Display="Dynamic" ControlToValidate="f_height" InitialValue="-1" Font-Size="Small"></asp:RequiredFieldValidator>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-4 col-xl-4">
                                        <div class="row">
                                            <div class="mb-3">
                                                <div class="form-label">Culeyska (Kg)</div>
                                                <asp:DropDownList class="form-select" ID="f_weight" runat="server">
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
                                                <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Dooro Culeyskaaga" Display="Dynamic" ControlToValidate="f_weight" InitialValue="-1" Font-Size="Small"></asp:RequiredFieldValidator>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-xl-4">
                                        <div class="row">
                                            <div class="mb-3">
                                                <div class="form-label">Midabka</div>
                                                <asp:DropDownList class="form-select" ID="f_skin_color" runat="server">
                                                    <asp:ListItem Value="-1">Dooro Midabka</asp:ListItem>
                                                    <asp:ListItem>Madow</asp:ListItem>
                                                    <asp:ListItem>Maarriin</asp:ListItem>
                                                    <asp:ListItem>Caddaan</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Dooro Midabkaaga" Display="Dynamic" ControlToValidate="f_skin_color" InitialValue="-1" Font-Size="Small"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="row">
                                            <div class="mb-3">
                                                <div class="form-label">Ma Qabtaa Cudurada Faafa?</div>
                                                <asp:DropDownList class="form-select" ID="disease" runat="server">
                                                    <asp:ListItem Value="-1">Dooro</asp:ListItem>
                                                    <asp:ListItem> Haa</asp:ListItem>
                                                    <asp:ListItem> Maya</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator10" runat="server" ErrorMessage="Cunto karinta sidee ku tahay?" Display="Dynamic" ControlToValidate="disease" Font-Size="Small" InitialValue="-1"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="row">
                                            <div class="mb-3">
                                                <div class="form-label">Cunto karinta sidee ku tahay?</div>
                                                <asp:DropDownList class="form-select" ID="cooking_skill" runat="server">
                                                    <asp:ListItem Value="-1">dooro</asp:ListItem>
                                                    <asp:ListItem> 100%</asp:ListItem>
                                                    <asp:ListItem> 50%</asp:ListItem>
                                                    <asp:ListItem> 25%</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Cunto karinta sidee ku tahay?" Display="Dynamic" ControlToValidate="cooking_skill" Font-Size="Small" InitialValue="-1"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6 col-sm-4 col-md-2 col-xl-auto mb-3 w-100 d-flex justify-content-center">

                                        <asp:Button class="btn btn-success w-25" ID="f_submit" runat="server" Text="Submit" />
                                    </div>

                                </div>
                                <div class="row align-items-center" id="male_form" runat="server">
                                    <h3 class="h1 ">Ku Soo Dhawaaw Guurdoon</h3>
                                    <div class="markdown text-muted mb-3">
                                        Si aad u sameysid xuslashoooyinka ugana midnoqotid guurdoon
                                        <br />
                                        fadlan buuxi macluumadka hoose.
                                    </div>

                                    <div class="col-12 col-xl-6">
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

                                                <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator12" runat="server" ErrorMessage="Dooro da'da." Display="Dynamic" ControlToValidate="m_age" Font-Size="Small" InitialValue="-1"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 col-xl-6">
                                        <div class="row">
                                            <div class="mb-3">
                                                <div class="form-label">Marxaladda Guurka </div>
                                                <asp:DropDownList class="form-select" ID="m_material_status" runat="server">
                                                    <asp:ListItem Value="-1">Dooro Marxaladda Guurka</asp:ListItem>
                                                    <asp:ListItem>Doob</asp:ListItem>
                                                    <asp:ListItem>Xaasle</asp:ListItem>
                                                    <asp:ListItem>Guursaday</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator13" runat="server" ErrorMessage="Dooro Marxaladda Guurka." Display="Dynamic" ControlToValidate="m_material_status" Font-Size="Small" InitialValue="-1"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="row">
                                            <div class="mb-3">
                                                <div class="form-label">Magaalada aad ku nooshahay</div>
                                                <asp:TextBox class="form-control  " name="example-text-input" ID="m_location" runat="server" placeHolder="Gali Magaalada aad ku nooshahay"></asp:TextBox>
                                                <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator14" runat="server" ErrorMessage="Gali Magaalada aad ku nooshahay" Display="Dynamic" ControlToValidate="m_location" Font-Size="Small"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <div class="row">
                                            <div class="mb-3">
                                                <div class="form-label">Heerka  Waxbarashada </div>
                                                <asp:DropDownList class="form-select" ID="m_education_level" runat="server">
                                                    <asp:ListItem Value="-1">Dooro Heerka Waxbarashada</asp:ListItem>
                                                    <asp:ListItem>Diini</asp:ListItem>
                                                    <asp:ListItem>Xirfadle</asp:ListItem>
                                                    <asp:ListItem>School</asp:ListItem>
                                                    <asp:ListItem>Bachelor</asp:ListItem>
                                                    <asp:ListItem>Master</asp:ListItem>
                                                    <asp:ListItem>PHD</asp:ListItem>
                                                    <asp:ListItem>Waxba</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator15" runat="server" ErrorMessage="Dooro Heerka Waxbarashada" Display="Dynamic" ControlToValidate="m_education_level" Font-Size="Small" InitialValue="-1"></asp:RequiredFieldValidator>
                                            </div>

                                        </div>
                                    </div>
                                    
                                        <div class="col-12">
                                            <div class="row">
                                                <div class="mb-3">
                                                    <div class="form-label">Goobta Shaqada </div>
                                                    <asp:TextBox class="form-control  " name="example-text-input" ID="m_workplace" runat="server" placeHolder="Gali Goobta Shaqada"></asp:TextBox>
                                                    <asp:RequiredFieldValidator CssClass="text-danger" runat="server" ID="RequiredFieldValidator16" ErrorMessage="Gali Goobta Shaqada" Display="Dynamic" ControlToValidate="m_workplace"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-12">
                                            <div class="row">
                                                <div class="mb-3">
                                                    <div class="form-label">Jagada</div>
                                                    <asp:TextBox class="form-control  " name="example-text-input" ID="m_title" runat="server" placeHolder="Gali Jagada"></asp:TextBox>
                                                </div>
                                                <asp:RequiredFieldValidator CssClass="text-danger" runat="server" ID="RequiredFieldValidator17" ErrorMessage="Gali Jagada" Display="Dynamic" ControlToValidate="m_title"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-12">
                                        <div class="row">
                                            <div class="mb-3">
                                                <div class="form-label">Dhirirka (Kg)</div>
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
                                                <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator18" runat="server" ErrorMessage="Dooro Dhirirkaaga" Display="Dynamic" ControlToValidate="m_height" InitialValue="-1" Font-Size="Small"></asp:RequiredFieldValidator>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
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
                                                <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator19" runat="server" ErrorMessage="Dooro Culeyskaaga" Display="Dynamic" ControlToValidate="m_weight" InitialValue="-1" Font-Size="Small"></asp:RequiredFieldValidator>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="row">
                                            <div class="mb-3">
                                                <div class="form-label">Midabka</div>
                                                <asp:DropDownList class="form-select" ID="m_color" runat="server">
                                                    <asp:ListItem Value="-1">Dooro Midabka</asp:ListItem>
                                                    <asp:ListItem>Madow</asp:ListItem>
                                                    <asp:ListItem>Maarriin</asp:ListItem>
                                                    <asp:ListItem>Caddaan</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator20" runat="server" ErrorMessage="Dooro Midabkaaga" Display="Dynamic" ControlToValidate="m_color" InitialValue="-1" Font-Size="Small"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>

                                   
                                 <div class="col-12">
                                        <div class="row">
                                            <div class="mb-3">
                                                <div class="form-label">Ma Qabtaa Cudurada Faafa?</div>
                                                <asp:DropDownList class="form-select" ID="DropDownList2" runat="server">
                                                    <asp:ListItem Value="-1">Dooro</asp:ListItem>
                                                    <asp:ListItem>Haa</asp:ListItem>
                                                    <asp:ListItem>Maya</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator22" runat="server" ErrorMessage="Sidee ku tahay kaalmada howsha guriga?" Display="Dynamic" ControlToValidate="support" Font-Size="Small" InitialValue="-1"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="row">
                                            <div class="mb-3">
                                                <div class="form-label">Sidee Ku Tahay Kaalmada Howsha Guriga</div>
                                                <asp:DropDownList class="form-select" ID="support" runat="server">
                                                    <asp:ListItem Value="-1">Dooro</asp:ListItem>
                                                    <asp:ListItem>100%</asp:ListItem>
                                                    <asp:ListItem>50%</asp:ListItem>
                                                    <asp:ListItem>25%</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator21" runat="server" ErrorMessage="Sidee ku tahay kaalmada howsha guriga?" Display="Dynamic" ControlToValidate="support" Font-Size="Small" InitialValue="-1"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6 col-sm-4 col-md-2 col-xl-auto mb-3 w-100 d-flex justify-content-center">
                                        <asp:Button class="btn btn-success w-25" ID="m_save" runat="server" Text="Submit" />
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
             </ContentTemplate>
         </asp:UpdatePanel>
    </div>
</asp:Content>
