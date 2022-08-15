<%@ Page Title="" Language="C#" MasterPageFile="~/Adminstraation/Adminstration.Master" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="Guryosamo.Adminstraation.UserDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../dist/libs/apexcharts/dist/apexcharts.min.js"></script>
    <asp:Literal runat="server" ID="l"></asp:Literal>
      <script>

          var labal;
          var data;
          var arr = [20,30,20,20];
        
      // @formatter:off
      document.addEventListener("DOMContentLoaded", function () {
      	window.ApexCharts && (new ApexCharts(document.getElementById('chart-demo-pie'), {
      		chart: {
      			type: "donut",
      			fontFamily: 'inherit',
      			height: 340,
      			sparkline: {
      				enabled: true
      			},
      			animations: {
      				enabled: false
      			},
      		},
      		fill: {
      			opacity: 1,
                },
                series: data,
                labels: ["Raga","Haweenka"],
      		grid: {
      			strokeDashArray: 50,
      		},
                colors: ["#056b05", "#b8ffb8", "#069e06", "#e9ecf1"],
      		legend: {
      			show: true,
      			position: 'bottom',
      			offsetY: 15,
      			markers: {
      				width: 10,
      				height: 10,
      				radius: 100,
      			},
      			itemMargin: {
      				horizontal: 8,
      				vertical: 8
      			},
      		},
      		tooltip: {
      			fillSeriesColor: false
      		},
      	})).render();
      });
      // @formatter:on
      </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

         <div class="page-wrapper">
        <div class="container-xl">
          <!-- Page title -->
          <div class="page-header d-print-none">
            <div class="row align-items-center">
              <div class="col">              
                <h2 class="page-title">
                  Isdiiwaagaliyaasha
                </h2>
              </div>
          </div>
        </div>
        <div class="page-body">
          <div class="container-xl">
            <div class="row row-deck row-cards">
                  <div class="col-4">
                      
                <div class="card">
                  <div class="card-body">
                    <div class="d-flex align-items-center">
                      <div class="subheader" >Raga </div>                    
                    </div>
                    <div class="d-flex align-items-baseline">
                      <div class="h1 mb-0 me-2 " id="ragga" runat="server"></div>
                        <a href="../Adminstraation/Raga.aspx">
                            <div class="me-auto">
                        <span class="text-green d-inline-flex align-items-center lh-1">
                                      
	                       <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><circle cx="9" cy="7" r="4" /><path d="M3 21v-2a4 4 0 0 1 4 -4h4a4 4 0 0 1 4 4v2" /><path d="M16 3.13a4 4 0 0 1 0 7.75" /><path d="M21 21v-2a4 4 0 0 0 -3 -3.85" /></svg>
                            Shaqsi
                        </span>
                      </div>

                      </a>
                        
                    </div>
                  </div>               
                </div>
              </div>
              <div class="col-4">
                <div class="card">
                  <div class="card-body">
                    <div class="d-flex align-items-center">
                      <div class="subheader">Dhumarka </div>
                     
                    </div>
                    <div class="d-flex align-items-baseline">
                      <div class="h1 mb-0 me-2 " id="dhumarka" runat="server"></div>
                        <a href="../Adminstraation/Haweenka.aspx">
                        <div class="me-auto">
                        <span class="text-green d-inline-flex align-items-center lh-1">
                                      
	                       <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><circle cx="9" cy="7" r="4" /><path d="M3 21v-2a4 4 0 0 1 4 -4h4a4 4 0 0 1 4 4v2" /><path d="M16 3.13a4 4 0 0 1 0 7.75" /><path d="M21 21v-2a4 4 0 0 0 -3 -3.85" /></svg>
                            Shaqsi
                        </span>
                      </div>
                            
                            </a>
                    </div>
                  </div>
                   
               
                </div>
              </div>    
                 <div class="col-4">
                  <div class="card">
                    <div class="card-body">
                         <div class="subheader" >All User</div> 
                      <div class="d-flex align-items-baseline">
                       
                          <div class="h1 mb-0 me-2 " id="All" runat="server"></div>
                            <a href="../Adminstraation/Alluser.aspx">
                              <div class="me-auto">
                                <span class="text-green d-inline-flex align-items-center lh-1">
                                      
	                            <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><circle cx="9" cy="7" r="4" /><path d="M3 21v-2a4 4 0 0 1 4 -4h4a4 4 0 0 1 4 4v2" /><path d="M16 3.13a4 4 0 0 1 0 7.75" /><path d="M21 21v-2a4 4 0 0 0 -3 -3.85" /></svg>
                                  Shaqsi
                               </span>
                      </div>
                            </a>
                    </div>
                    
                  </div>
                   
               
                </div> 
              </div>  
                 <div class="col-lg-12 col-xl-12">
                <div class="card">
                  <div class="card-body">
                    <div id="chart-demo-pie"></div>
                  </div>
                </div>
              </div>
            </div>
            </div>
          </div>
          </div>
       </div>
</asp:Content>

