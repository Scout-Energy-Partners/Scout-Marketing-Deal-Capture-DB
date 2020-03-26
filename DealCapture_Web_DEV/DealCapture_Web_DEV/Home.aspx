<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DealCapture_Web_DEV.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #frmHome {
            height: 820px;
            background-color:  #98A4AE;
        }
        #navBtns {
            height: 246px;
        }
        #navBtnsCon {
            height: 242px;
            justify-content:center;
        }
        #navBtnsTop {
            height: 183px;
        }
    </style>
</head>
<body>
    <form id="frmHome" runat="server">

        <div style="height: 63px; background-color: #CBA052;">
            <h2 style="text-align:center;">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="55px" ImageAlign="Middle" ImageUrl="~/Content/Images/android-icon-192x192.png" Width="128px" />
                Scout Deal Capture<asp:ImageButton ID="ImageButton1" runat="server" Height="55px" ImageAlign="Middle" ImageUrl="~/Content/Images/android-icon-192x192.png" Width="128px" />
            </h2>
        </div>
        <div id="navBtnsTop">

            <asp:ImageButton ID="imgBtnUpload" runat="server" Height="183px" ImageUrl="~/Content/Images/Upload.png" style="margin-left: 646px" Width="227px" OnClick="imgBtnUpload_Click" />

        </div>
        <div id="navBtns">

            <asp:ImageButton ID="imgBtnGas" runat="server" Height="244px" ImageAlign="Right" ImageUrl="~/Content/Images/Gas.png" Width="227px" />
            <asp:ImageButton ID="imgBtnOil" runat="server" Height="244px" ImageAlign="Left" ImageUrl="~/Content/Images/Oil.png" Width="227px" OnClick="imgBtnOil_Click" />

        </div>
        <div id="navBtnsCon">

            <asp:ImageButton ID="imgBtnNgl" runat="server" Height="244px" ImageAlign="Middle" ImageUrl="~/Content/Images/Ngl.png" Width="227px" style="margin-left: 646px" OnClick="imgBtnNgl_Click" />

        </div>
    </form>
</body>
</html>
