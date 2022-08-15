<%@ Page Title="" Language="C#" MasterPageFile="~/Adminstraation/Adminstration.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="Guryosamo.Adminstraation.Reports" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
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
                  Reports
                </div>
               
              </div>
          </div>
        </div>
        <div class="page-body">
            <h1 id="me" runat="server">

            </h1>
            <CR:CrystalReportViewer ID="CRAllUsers" runat="server" AutoDataBind="True" Height="50px"  ToolPanelWidth="200px" Width="350px" OnInit="CRAllUsers_Init"  ReportSourceID="CrystalReportSource1"  />
           
        
           
           
          </div>
          </div>
       </div>
</asp:Content>
