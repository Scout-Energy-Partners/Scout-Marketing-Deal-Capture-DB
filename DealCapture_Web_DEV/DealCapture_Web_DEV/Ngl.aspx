<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ngl.aspx.cs" Inherits="DealCapture_Web_DEV.Ngl" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
  <title>NGL View</title>
    <!-- Content needed for bootstrap -->
  <link href="Content/bootstrap.min.css" rel="stylesheet" /> 
  <script src="Scripts/jquery-3.4.1.min.js"></script>
  <script src="Scripts/bootstrap.min.js"></script>
  <script src="Scripts/popper.min.js"></script>
</head>
<style>
        #frmNGL{
        background-color: #CBA052;
    }
    .navbar{
        background-color:#98A4AE;
    }
    .navbar a{
        color:#CBA052;
    }
</style>
<body>
    <form id="frmNGL" runat="server">
        <!-- Navigation Bar -->
        <div class="container-fluid">
                <nav class="navbar  navbar-expand-lg" >
                    <a href="#" class="navbar-brand">Scout
                        <img src="Content/Images/android-icon-192x192.png" alt="Scout Logo" />
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-label="Toogle Navigation">
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item">
                                <a href="Home.aspx" class="nav-link">Home</a>
                            </li>
                            <li class="nav-item">
                                <a href="Upload.aspx" class="nav-link">Price Upload</a>
                            </li>
                            <li class="nav-item">
                                <a href="Ngl.aspx" class="nav-link">NGL View</a>
                            </li>
                            <li class="nav-item">
                                <a href="Oil.aspx" class="nav-link">Oil View</a>
                            </li>
                            <li class="nav-item">
                                <a href="Gas.aspx" class="nav-link">Gas View</a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        <!-- Navigation Bar -->
        
        <div>
            <table>
                <tr>
                    <!-- Data Edit Table -->
                    <td rowspan="2">
                        <asp:TextBox ID="txtRecordDate" runat="server" style="z-index: 1; left: 172px; top: 177px; position: absolute; height: 18px; width: 205px; " BackColor="#FFCC66"></asp:TextBox>
                        <asp:TextBox ID="txtMonthNum" runat="server" style="                                z-index: 1;
                                left: 171px;
                                top: 205px;
                                position: absolute;
                                height: 18px;
                                width: 205px
                        "></asp:TextBox>
                        <asp:TextBox ID="txtName" runat="server" style="z-index: 1; left: 171px; top: 238px; position: absolute; height: 18px; width: 205px" BackColor="#FFCC66"></asp:TextBox>
                        <asp:TextBox ID="txtAccountingCode" runat="server" style="z-index: 1; left: 171px; top: 274px; position: absolute; width: 205px; height: 18px;" BackColor="#FFCC66"></asp:TextBox>
                        <asp:TextBox ID="txtProspectName" runat="server" style="z-index: 1; left: 167px; top: 360px; position: absolute; height: 18px; width: 205px"></asp:TextBox>
                        <asp:TextBox ID="txtWellName" runat="server" style="z-index: 1; left: 165px; top: 398px; position: absolute; height: 18px; width: 205px"></asp:TextBox>
                        <asp:TextBox ID="txtWellID" runat="server" style="z-index: 1; left: 161px; top: 438px; position: absolute; width: 206px" BackColor="#FFCC66"></asp:TextBox>
                        <asp:TextBox ID="txtBookingWellID" onkeyup ="FormatItDate(this);"  runat="server" style="z-index: 1; left: 169px; top: 478px; position: absolute; height: 18px; width: 205px" BackColor="#FFCC66"></asp:TextBox>
                        <asp:TextBox ID="txtUnitID" runat="server" style="z-index: 1; left: 161px; top: 516px; position: absolute; height: 18px; width: 205px; bottom: 228px;" BackColor="#FFCC66"></asp:TextBox>
                        <asp:TextBox ID="txtProspectCode" runat="server" style="z-index: 1; left: 168px; top: 321px; position: absolute; width: 205px" Height="18px"></asp:TextBox>                        
                        <asp:TextBox ID="txtTractID" runat="server" style="z-index: 1; left: 159px; top: 556px; position: absolute; height: 18px; width: 205px"></asp:TextBox>
                        <asp:Label ID="lblProspectName" runat="server" style="z-index: 1; left: 6px; top: 356px; position: absolute; font-weight: 700; right: 1169px;" Text="Prospect Name"></asp:Label>
                        <asp:Label ID="lblWellID" runat="server" style="z-index: 1; left: 9px; top: 443px; position: absolute; font-weight: 700; right: 1170px;" Text="Well ID"></asp:Label>
                        <asp:Label ID="lblRecordDate" runat="server" style="z-index: 1; left: 226px; top: 177px; position: absolute; left: 8px; font-weight: 700; font-family: Arial, Helvetica, sans-serif;" Text="Record Date"></asp:Label>
                        <asp:Label ID="lblName" runat="server" style="z-index: 1; left: 9px; top: 231px; position: absolute; height: 28px; right: 1174px; bottom: 509px; font-weight: 700;" Text="Name"></asp:Label>
                        <asp:Label ID="lblAccountingCode" runat="server" style="z-index: 1; left: 1px; top: 270px; position: absolute; height: 26px; font-weight: 700; right: 1160px;" Text="Accounting Code"></asp:Label>
                        <asp:Label ID="lblWellName" runat="server" style="z-index: 1; left: 8px; top: 396px; position: absolute; font-weight: 700; right: 1170px;" Text="Well Name"></asp:Label>
                        <asp:Label ID="lblBookingWellID" runat="server" style="z-index: 1; left: 2px; top: 475px; position: absolute; font-weight: 700; right: 1164px;" Text="Booking Well ID"></asp:Label>
                        <asp:Label ID="lblUnitID" runat="server" style="z-index: 1; left: 2px; top: 512px; position: absolute; font-weight: 700; right: 1174px;" Text="Unit ID"></asp:Label>
                        <asp:Label ID="lblProspectCode" runat="server" style="z-index: 1; left: 6px; top: 321px; position: absolute; height: 15px; font-weight: 700; right: 1164px;" Text="Prospect Code"></asp:Label>
                        <asp:Label ID="lblMonthNumber" runat="server" style="z-index: 1; left: 5px; top: 203px; position: absolute; height: 24px; font-weight: 700; right: 1177px; font-family: Arial, Helvetica, sans-serif; bottom: 541px;" Text="Month Number" BorderColor="White"></asp:Label>
                        <asp:Label ID="lblTractID" runat="server" style="z-index: 1; left: 7px; top: 555px; position: absolute; width: 102px; height: 24px; font-weight: 700; right: 1216px;" Text="Tract ID"></asp:Label>
                    </td>
                    <!-- Data Edit Table -->
                </tr>
            </table>

                                                

        

                                                

        </div>
    </form>
</body>
</html>
