<%@ Page Title="" Language="C#" MasterPageFile="~/Acount/Acount.Master" AutoEventWireup="true" CodeBehind="Content.aspx.cs" Inherits="Guryosamo.Acount.Content" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-wrapper">
        <div class="container-xl">
            <div class="page-body" id="Dhedig" runat="server" accesskey="public">

                <h1>GuryoSamo contact Centar.</h1>
                <address>
                    <%-- <br /> Redmond, WA 98052-6399<br />--%>
                    <abbr title="Phone">P:</abbr>
                    +25261xxxxxxx
                   
                </address>
                <address>
                    <strong>Saciidaas:</strong>   <a href="mailto:Support@example.com">GuryoSamo@example.com</a><br />
                    <strong>Cabasho:</strong> <a href="mailto:Marketing@example.com">GuryoSamo@example.com</a>
                </address>

            </div>
        </div>
    </div>
</asp:Content>
