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
        text-decoration:underline;
        text-decoration-color:white;
        top: 0px;
        left: 0px;
        height: 74px;
    }
    .navbar a{
        color:#CBA052;
        font-weight:bold;
        text-decoration:underline;
        text-decoration-color:white;
    }
    .txtData{
        height: 14px;
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
            <br />
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-6">
                        <table>
                            <tr>
                                <!-- Data Edit Table -->
                                <td rowspan="2">
                                    <!-- Text Boxes -->
                                    <asp:TextBox class="txtData" ID="txtRecordDate" runat="server" style="z-index: 1; left: 168px; top: 17px; position: absolute; height: 14px; width: 205px; " BackColor="#FFCC66" Height="14px"></asp:TextBox>
                                    <asp:TextBox class="txtData" ID="txtMonthNum" runat="server" style="z-index: 1; left: 167px; top: 40px; position: absolute; height: 18px; width: 205px"></asp:TextBox>
                                    <asp:TextBox class="txtData" ID="txtName" runat="server" style="z-index: 1; left: 168px; top: 68px; position: absolute; height: 18px; width: 205px" BackColor="#FFCC66" Height="14px"></asp:TextBox>
                                    <asp:TextBox class="txtData" ID="txtAccountingCode" runat="server" style="z-index: 1; left: 167px; top: 98px; position: absolute; width: 205px; height: 18px;" BackColor="#FFCC66"></asp:TextBox>
                                    <asp:TextBox class="txtData" ID="txtProspectName" runat="server" style="z-index: 1; left: 169px; top: 150px; position: absolute; height: 18px; width: 205px"></asp:TextBox>
                                    <asp:TextBox class="txtData" ID="txtWellName" runat="server" style="z-index: 1; left: 170px; top: 176px; position: absolute; height: 18px; width: 205px"></asp:TextBox>
                                    <asp:TextBox class="txtData" ID="txtWellID" runat="server" style="z-index: 1; left: 170px; top: 202px; position: absolute; width: 206px" BackColor="#FFCC66"></asp:TextBox>
                                    <asp:TextBox class="txtData" ID="txtBookingWellID" onkeyup ="FormatItDate(this);"  runat="server" style="z-index: 1; left: 172px; top: 226px; position: absolute; height: 18px; width: 205px" BackColor="#FFCC66"></asp:TextBox>
                                    <asp:TextBox class="txtData" ID="txtUnitID" runat="server" style="z-index: 1; left: 170px; top: 253px; position: absolute; height: 18px; width: 205px; bottom: 201px;" BackColor="#FFCC66"></asp:TextBox>
                                    <asp:TextBox class="txtData" ID="txtProspectCode" runat="server" style="z-index: 1; left: 169px; top: 125px; position: absolute; width: 205px" Height="18px" OnTextChanged="txtProspectCode_TextChanged"></asp:TextBox>                        
                                    <asp:TextBox class="txtData" ID="txtTractID" runat="server" style="z-index: 1; left: 167px; top: 280px; position: absolute; height: 18px; width: 205px"></asp:TextBox>
                                    <!-- Labels -->
                                    <asp:Label class="lblData" ID="lblRecordDate" runat="server" style="z-index: 1; left: 226px; top: 11px; position: absolute; left: 13px; font-weight: 700; font-family: Arial, Helvetica, sans-serif; width: 353px;" Text="Record Date"></asp:Label>
                                    <asp:Label class="lblData" ID="lblMonthNum" runat="server" style="z-index: 1; left: 7px; top: 38px; position: absolute; height: 21px; font-weight: 700; right: 180px; font-family: Arial, Helvetica, sans-serif; bottom: 419px;" Text="Month Number" BorderColor="White"></asp:Label>
                                    <asp:Label class="lblData" ID="lblName" runat="server" style="z-index: 1; left: 9px; top: 63px; position: absolute; height: 28px; right: 1017px; bottom: 387px; font-weight: 700;" Text="Name"></asp:Label>
                                    <asp:Label class="lblData" ID="lblAccountingCode" runat="server" style="z-index: 1; left: 4px; top: 94px; position: absolute; height: 26px; font-weight: 700; right: 127px;" Text="Accounting Code"></asp:Label>
                                    <asp:Label class="lblData" ID="lblProspectName" runat="server" style="z-index: 1; left: 7px; top: 144px; position: absolute; font-weight: 700; right: 460px;" Text="Prospect Name"></asp:Label>
                                    <asp:Label class="lblData" ID="lblWellName" runat="server" style="z-index: 1; left: 5px; top: 172px; position: absolute; font-weight: 700; right: 469px;" Text="Well Name"></asp:Label>
                                    <asp:Label class="lblData" ID="lblWellID" runat="server" style="z-index: 1; left: 7px; top: 197px; position: absolute; font-weight: 700; right: 548px;" Text="Well ID"></asp:Label>
                                    <asp:Label class="lblData" ID="lblBookingWellID" runat="server" style="z-index: 1; left: 6px; top: 223px; position: absolute; font-weight: 700; right: 175px;" Text="Booking Well ID"></asp:Label>
                                    <asp:Label class="lblData" ID="lblUnitID" runat="server" style="z-index: 1; left: 5px; top: 250px; position: absolute; font-weight: 700; right: 960px;" Text="Unit ID"></asp:Label>
                                    <asp:Label class="lblData" ID="lblProspectCode" runat="server" style="z-index: 1; left: 6px; top: 123px; position: absolute; height: 26px; font-weight: 700; right: 393px;" Text="Prospect Code"></asp:Label>
                                    <asp:Label class="lblData" ID="lblTractID" runat="server" style="z-index: 1; left: 7px; top: 277px; position: absolute; width: 102px; height: 24px; font-weight: 700; right: 1276px;" Text="Tract ID"></asp:Label>
                                </td>
                                <!-- Data Edit Table -->
                            </tr>
                        </table>                                    
                    </div>
                    <!-- Data Edit Table Continued -->
                    <div class="col-sm-6">
                        <table>
                            <tr>
                                <td rowspan="2">
                                    <!-- Text Boxes -->
                                    <asp:TextBox class="txtData" ID="txt"></asp:TextBox>

                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
