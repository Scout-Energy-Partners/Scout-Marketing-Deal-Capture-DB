<%@ Page Title="Login" Language="C#"  AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DealCapture_Web_DEV.Login" %>

<html>

<head>
    <style type="text/css">
        #form1 {
            height: 734px;
        }
    </style>
</head>

<form id="form1" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="text-align:center;" Height="736px">
        <asp:Image ID="Image1" runat="server" />
        Scout Deal Capture<asp:Image ID="Image2" runat="server" />
        <asp:Panel ID="Panel2" runat="server" Height="150px">
            Username:<asp:TextBox ID="txtUsername" runat="server" Height="29px" style="margin-left: 12px; margin-top: 162px" Width="182px"></asp:TextBox>
            <asp:Panel ID="Panel3" runat="server" Height="131px">
                <asp:TextBox ID="txtPassword" runat="server" Height="26px" style="margin-left: 0px; margin-top: 26px" TabIndex="1" Width="176px"></asp:TextBox>
                &nbsp;:Password<asp:Panel ID="Panel4" runat="server" Height="68px">
                    <asp:ImageButton ID="imgBtnSubmit" runat="server" Height="70px" OnClick="imgBtnSubmit_Click" style="margin-left: 0px" Width="150px" />
                </asp:Panel>
                <asp:Panel ID="pnlIncorrectLogin" runat="server" Height="144px" Visible="False">
                    Incorrect Login</asp:Panel>
            </asp:Panel>
        </asp:Panel>
    </asp:Panel>
</form>

</html>