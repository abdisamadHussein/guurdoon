<%@ Page Title="" Language="C#" MasterPageFile="~/Acount/Acount.Master" AutoEventWireup="true" CodeBehind="Setting.aspx.cs" Inherits="Guryosamo.Acount.Setting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-wrapper">
        <div class="container-xl">
            <!-- Page title -->
            <div class="page-header d-print-none">
                <div class="row align-items-center">
                    <div class="col">
                        <h2 class="page-title">Form elements
                        </h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="page-body">
            <div class="container-xl">
                <div class="row row-cards">

                    <div class="card">
                        <div class="card-body">
                            <div class="accordion" id="accordion-example">
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="heading-1">
                                        <button class="accordion-button " type="button" data-bs-toggle="collapse" data-bs-target="#collapse-1" aria-expanded="true">
                                            Account
                     
                                        </button>
                                    </h2>
                                    <div id="collapse-1" class="accordion-collapse collapse show" data-bs-parent="#accordion-example">
                                        <div class="accordion-body pt-0">
                                            <div class="form-group mb-3 row">
                                                <label class="form-label col-3 col-form-label">Full Name</label>
                                                <div class="col">
                                                    <asp:TextBox class="form-control  " name="example-text-input" ID="fullname" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group mb-3 row">
                                                <label class="form-label col-3 col-form-label">Email address</label>
                                                <div class="col">
                                                    <asp:TextBox class="form-control  " name="example-text-input" ID="emailaddress" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group mb-3 row">
                                                <label class="form-label col-3 col-form-label">Phone</label>
                                                <div class="col">
                                                    <asp:TextBox class="form-control  " name="example-text-input" ID="phone" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group mb-3 row">
                                                <label class="form-label col-3 col-form-label">Jinsiga</label>
                                                <div class="col">
                                                    <asp:DropDownList class="form-select" ID="gender" runat="server">
                                                        <asp:ListItem>Lab</asp:ListItem>
                                                        <asp:ListItem>Dheddig</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>

                                            <div class="form-footer">
                                                  <asp:Button ID="UpdateA" class="btn btn-success" runat="server" Text="Update" OnClick="UpdateC_Click" />
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="heading-2">
                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse-2" aria-expanded="false">
                                            Macluumaadka
                     
                                        </button>
                                    </h2>
                                    <div id="collapse-2" class="accordion-collapse collapse" data-bs-parent="#accordion-example">
                                        <div class="accordion-body pt-0">
                                            <div class="form-group mb-3 row">
                                                <label class="form-label col-3 col-form-label">Da'da</label>
                                                <div class="col">
                                                    <asp:DropDownList class="form-select" ID="age" runat="server">
                                                        <asp:ListItem>17-20</asp:ListItem>
                                                        <asp:ListItem>21-25</asp:ListItem>
                                                        <asp:ListItem>26-30</asp:ListItem>
                                                        <asp:ListItem>31-35</asp:ListItem>
                                                        <asp:ListItem>36-40</asp:ListItem>
                                                        <asp:ListItem>41-45</asp:ListItem>
                                                        <asp:ListItem>46-50</asp:ListItem>
                                                        <asp:ListItem>+51</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="form-group mb-3 row">
                                                <label class="form-label col-3 col-form-label">Dhirirka (m)</label>
                                                <div class="col">
                                                    <asp:DropDownList class="form-select" ID="height" runat="server">
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
                                                </div>
                                            </div>
                                            <div class="form-group mb-3 row">
                                                <label class="form-label col-3 col-form-label">Culeyska (kg)</label>
                                                <div class="col">
                                                    <asp:DropDownList class="form-select" ID="weight" runat="server">
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
                                                </div>
                                            </div>
                                            <div class="form-group mb-3 row">
                                                <label class="form-label col-3 col-form-label">Midabka</label>
                                                <div class="col">
                                                    <asp:DropDownList class="form-select" ID="choosen_color" runat="server">
                                                        <asp:ListItem>Madow</asp:ListItem>
                                                        <asp:ListItem>Maarriin</asp:ListItem>
                                                        <asp:ListItem>Caddaan</asp:ListItem>
                                                    </asp:DropDownList>
                                                   <asp:RequiredFieldValidator CssClass="text-danger" ID="RequiredFieldValidator10" runat="server" ErrorMessage="dooro midabkaaga" Display="Dynamic" ControlToValidate="choosen_color" InitialValue="-1" Font-Size="Small"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
                                            <div class="form-group mb-3 row">
                                                <label class="form-label col-3 col-form-label">Marxadalada Guurka</label>
                                                <div class="col">
                                                    <asp:DropDownList class="form-select" ID="w_material_status" runat="server">
                                                        <asp:ListItem Value="-1">Dooro Marxadalada Guurka</asp:ListItem>
                                                        <asp:ListItem>Carmal</asp:ListItem>
                                                        <asp:ListItem>Gashaanti</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:DropDownList class="form-select" ID="m_material_status" runat="server">
                                                        <asp:ListItem Value="-1">Dooro Marxadalada Guurka</asp:ListItem>
                                                        <asp:ListItem>Doob</asp:ListItem>
                                                        <asp:ListItem>Xaasle</asp:ListItem>
                                                        <asp:ListItem>Guur soomaray</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="form-group mb-3 row">
                                                <label class="form-label col-3 col-form-label">Heerka  waxbarashada </label>
                                                <div class="col">
                                                    <asp:DropDownList class="form-select" ID="education_level" runat="server">
                                                        <asp:ListItem>Diini</asp:ListItem>
                                                        <asp:ListItem>Xirfadle</asp:ListItem>
                                                        <asp:ListItem>School</asp:ListItem>
                                                        <asp:ListItem>Bachelor</asp:ListItem>
                                                        <asp:ListItem>Master</asp:ListItem>
                                                        <asp:ListItem>PHD</asp:ListItem>
                                                        <asp:ListItem>Waxba</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <div class="form-group mb-3 row">
                                                <label class="form-label col-3 col-form-label">Goobta shqaqda</label>
                                                <div class="col">
                                                    <asp:TextBox class="form-control  " name="example-text-input" ID="choosen_workplace" runat="server" placeHolder="Gali Goobta Shaqada"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-group mb-3 row">
                                                <label class="form-label col-3 col-form-label">Jagadda</label>
                                                <div class="col">
                                                    <asp:TextBox class="form-control  " name="example-text-input" ID="choosen_title" runat="server" placeHolder="Gali Jagaddaada"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="form-footer">
                                                <asp:Button ID="UpdateC" class="btn btn-success" runat="server" Text="Update" OnClick="UpdateC_Click" />
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

</asp:Content>
