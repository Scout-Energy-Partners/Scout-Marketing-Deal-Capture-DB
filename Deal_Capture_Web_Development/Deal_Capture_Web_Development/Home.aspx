<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Home.aspx.cs" Inherits="Deal_Capture_Web_Development.Home" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Title of the page -->
    <div class="jumbotron" style="text-align:center">
        <asp:Label ID="lblIntro" Text="" runat="server"  style="text-align:center; justify-content:center;"/>
    </div>
    <!-- Body Content -->
    <div class="container-fluid">
        <!-- Opening Charts -->
        <div class="row">
            <!-- Ngl Chart -->
            <div class="col-sm-4" style="text-align:center; justify-content:center">
                <h1>NGL CHART</h1>
                <asp:Chart ID="ctNgl" runat="server" DataSourceID="NglCtData">
                    <Series>
                        <asp:Series Name="Series1" ChartType="Line" XValueMember="IndexName" YValueMembers="Price"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="NglCtData" runat="server" ConnectionString="<%$ ConnectionStrings:DealCaptureDBConnectionString %>" SelectCommand="SELECT * FROM [NGL_ActualPricingTB]"></asp:SqlDataSource>
            </div>
            <!-- Gas Chart -->
            <div class="col-sm-4" style="text-align:center; justify-content:center">
                <h1>GAS CHART</h1>
                <asp:Chart ID="ctGas" runat="server" DataSourceID="GasCtData">
                    <Series>
                        <asp:Series Name="Series1" ChartType="Line" XValueMember="IndexName" YValueMembers="Price"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="GasCtData" runat="server" ConnectionString="<%$ ConnectionStrings:DealCaptureDBConnectionString %>" SelectCommand="SELECT * FROM [Gas_ActualPricingTB]"></asp:SqlDataSource>
            </div>
            <!-- Oil Chart -->
            <div class="col-sm-4" style="text-align:center; justify-content:center">
                <h1>OIL CHART</h1>
                <asp:Chart ID="ctOil" runat="server" DataSourceID="OilCtData">
                    <Series>
                        <asp:Series Name="Series1" ChartType="Line" XValueMember="IndexName" YValueMembers="Price"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="OilCtData" runat="server" ConnectionString="<%$ ConnectionStrings:DealCaptureDBConnectionString %>" SelectCommand="SELECT * FROM [Oil_ActualPricingTB]"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>

