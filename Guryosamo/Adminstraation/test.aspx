<%@ Page Title="" Language="C#" MasterPageFile="~/Adminstraation/Adminstration.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Guryosamo.Adminstraation.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" class="table table-bordered table-condensed table-responsive table-hover " runat="server" AutoGenerateColumns="false">
    <Columns>
        <asp:TemplateField>
            <HeaderTemplate>
    <asp:CheckBox ID="CheckBox1"  runat="server" AutoPostBack="true" />

            </HeaderTemplate>
            <ItemTemplate>
                <asp:CheckBox ID="CheckBox1"  runat="server" AutoPostBack="true" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="Id" HeaderText="Id" />
        <asp:BoundField DataField="Name" HeaderText="Name" />
        <asp:BoundField DataField="Country" HeaderText="Country" />
    </Columns>
</asp:GridView>
</asp:Content>
