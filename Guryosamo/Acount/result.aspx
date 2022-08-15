<%@ Page Title="" Language="C#" MasterPageFile="~/Acount/Acount.Master" AutoEventWireup="true" CodeBehind="result.aspx.cs" Inherits="Guryosamo.Acount.result" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="page-wrapper">
        <div class="container-xl">
          <!-- Page title -->
          <div class="page-header d-print-none">
            <div class="row align-items-center">
              <div class="col">
                <!-- Page pre-title -->
                <div class="page-pretitle">
                Dadka
                </div>
                <h2 class="page-title">
                Wali la aqbalin
                </h2>
              </div>
              
            </div>
          </div>
        </div>
        <div class="page-body" >
            <div class="container-xl">
                 <div class="row row-cards">
              <div class="col-12">
                  <p id="message" runat="server">wali lama haayo cid la aqbalaayo...</p>
                <div class="card" id="table" runat="server">
                  <div class="table-responsive">
                      <asp:GridView class="table table-mobile-md card-table w-100 h-auto"   ID="gvPending" runat="server" BorderStyle="None" GridLines="Horizontal" CellSpacing="-1"  OnSelectedIndexChanged="gvPending_SelectedIndexChanged" OnRowCommand="gvPending_RowCommand" AutoGenerateColumns="False" Height="158px" Width="531px">
                             <Columns>
                                  <asp:BoundField DataField="full_name" HeaderText ="Magaca Seddaxan" />
                                  <asp:BoundField DataField="email_address" HeaderText="User Acount" />
                                   <asp:BoundField DataField="phone" HeaderText="Phone" />

                                 <asp:TemplateField HeaderText ="Go'aan ka qaadasho">
                                   <ItemTemplate>
                                      <asp:LinkButton CssClass="btn btn-sm btn-success mx-2" ID="btnApprove" runat="server" CommandName="accept" CommandArgument="<%# Container.DataItemIndex %>"> <!-- Download SVG icon from http://tabler-icons.io/i/check -->
	                                    <svg xmlns="http://www.w3.org/2000/svg" class="icon m-0" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                            <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
                                            <path d="M5 12l5 5l10 -10" /></svg>Accept</asp:LinkButton>
                                      <asp:LinkButton CssClass="btn btn-sm btn-danger mx-2" ID="btnDeny" runat="server" CommandName="deny" CommandArgument="<%# Container.DataItemIndex %>"><!-- Download SVG icon from http://tabler-icons.io/i/letter-x -->
                                    <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-x m-0" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                       <path stroke="none" d="M0 0h24v24H0z" fill="none"></path>
                                       <line x1="18" y1="6" x2="6" y2="18"></line>
                                       <line x1="6" y1="6" x2="18" y2="18"></line>
                                    </svg>Deny </asp:LinkButton>
                                   </ItemTemplate>
                                     </asp:TemplateField>
                               
                             </Columns>          
                      </asp:GridView>
                  </div>
                </div>
              </div>

          
          
            </div>

                
                </div>
            </div>
             </div>

</asp:Content>
