﻿<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OilSum.aspx.cs" Inherits="Deal_Capture_Web_Development.OilSum" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Title of Page -->
    <div class="jumbotron" style="text-align:center">
        <h1>Oil Summarized</h1>
    </div>
    <!-- Content of the Page -->
    <div class="container-fluid">
        <!-- Search Bar --> 
        <div class="row">
            <div class="col-sm-12" style="justify-content:center">
                <asp:TextBox ID="txtSearch" runat="server" />
                <asp:Button Text="Search" runat="server" />
                <asp:Label Text="Seach by accounting number, prospects code, prospect nambe, well name, well id" runat="server" />
            </div>
        </div>
        <!-- Data Grid -->
        <div class="row">
            <div class="col-sm-12">
                <asp:GridView ID="grdOilSum" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" DataSourceID="OilSumData">
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="MonthNumber" HeaderText="MonthNumber" SortExpression="MonthNumber" />
                        <asp:BoundField DataField="CostCenterCode" HeaderText="CostCenterCode" SortExpression="CostCenterCode" />
                        <asp:BoundField DataField="SumOfNetAmount" HeaderText="SumOfNetAmount" SortExpression="SumOfNetAmount" />
                        <asp:BoundField DataField="SumOfNetVolume" HeaderText="SumOfNetVolume" SortExpression="SumOfNetVolume" />
                        <asp:BoundField DataField="Mth3raProd" HeaderText="Mth3raProd" SortExpression="Mth3raProd" />
                        <asp:BoundField DataField="Mth6raProd" HeaderText="Mth6raProd" SortExpression="Mth6raProd" />
                        <asp:BoundField DataField="Mth3raRev" HeaderText="Mth3raRev" SortExpression="Mth3raRev" />
                        <asp:BoundField DataField="Mth6raRev" HeaderText="Mth6raRev" SortExpression="Mth6raRev" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="OilSumData" runat="server" ConnectionString="<%$ ConnectionStrings:DealCaptureDBConnectionString %>" 
                    SelectCommand="SELECT * FROM [Oil_SummarizedTB]"
                    UpdateCommand="UPDATE [Oil_SummarizedTB] set [Name]=@Name,  MonthNumber=@MonthNumber, SumOfNetVolume=@SumOfNetVolume, SumOfNetAmount=@SumOfNetAmount, Mth3raProd=@Mth3raProd, Mth6raProd=@Mth6raProd, Mth3raRev=@Mth3raRev, Mth6raRev=@Mth6raRev Where CostCenterCode=@CostCenterCode And MonthNumber=@MonthNumber">
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>

