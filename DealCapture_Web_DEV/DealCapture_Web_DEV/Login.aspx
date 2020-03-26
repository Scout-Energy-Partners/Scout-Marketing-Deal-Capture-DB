<%@ Page Title="Login" Language="C#"  AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DealCapture_Web_DEV.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <style type="text/css">
        #frmLogin {
            height: 856px;
            background: url('file:///C:/Users/adam.gaddis/Documents/Github/Scout-Marketing-Deal-Capture-DB/DealCapture_Web_DEV/DealCapture_Web_DEV/Content/Images/background.jpg');
            }
        #pnlIncorrectLogin {
            text-size-adjust:auto;
        }
    </style>
</head>

<form id="frmLogin" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="text-align: center;" Height="736px" Font-Bold="True" Font-Size="Larger">
        <asp:Image ID="Image1" runat="server" Height="66px" ImageAlign="Middle" ImageUrl="~/Content/Images/android-icon-192x192.png" Width="117px" />
        Scout Deal Capture<asp:Image ID="Image2" runat="server" Height="66px" ImageAlign="Middle" ImageUrl="~/Content/Images/android-icon-192x192.png" Width="117px" />
        <asp:Panel ID="Panel2" runat="server" Height="150px">
            Username:<asp:TextBox ID="txtUsername" runat="server" Height="29px" style="margin-left: 12px; margin-top: 162px" Width="182px" BorderStyle="Double"></asp:TextBox>
            <asp:Panel ID="Panel3" runat="server" Height="131px">
                <asp:TextBox ID="txtPassword" runat="server" Height="26px" style="margin-left: 0px; margin-top: 26px" TabIndex="1" Width="176px" TextMode="Password" BorderStyle="Double"></asp:TextBox>
                &nbsp;:Password<asp:Panel ID="Panel4" runat="server" Height="109px">
                    <asp:ImageButton ID="imgBtnSubmit" runat="server" Height="103px" OnClick="imgBtnSubmit_Click" style="margin-left: 0px" Width="185px" ImageUrl="~/Content/Images/apple-icon-144x144.png" />
                </asp:Panel>
                <asp:Panel ID="pnlIncorrectLogin" runat="server" Height="144px" Visible="False" ForeColor="Red">
                    Incorrect Login</asp:Panel>
            </asp:Panel>
        </asp:Panel>
    </asp:Panel>
</form>

</html>