<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MyUserControl.ascx.cs" Inherits="WebApplication.MyUserControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <style>
        #titlePanel {
            display: flex;
            justify-content: center;
            align-items: center;
        }
        #dashboardTitle {
            text-align: center;
        }
    </style>
</head>
    <body>
        <asp:Panel ID="titlePanel" runat="server" Height="86px" CssClass="d-flex justify-content-center align-items-center">
            <asp:Label ID="dashboardTitle" runat="server" Text="Welcome to the Dashboard" BorderWidth="25px" Font-Bold="True" Font-Size="30pt" ForeColor="Black" Height="65px" Width="100%" BorderColor="White" BorderStyle="None" CssClass="text-center"></asp:Label>
        </asp:Panel>
    </body>
</html>