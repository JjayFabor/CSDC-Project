<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center; margin-top: 13%; margin-bottom: 10%;">
            <asp:Label ID="Label4" runat="server" Text="User ID" style="margin-left: 13px; margin-right: 10px;"></asp:Label>
            <asp:TextBox ID="UserIDTextBox" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="Label1" runat="server" Text="Username" style="margin-left: 0px; margin-right: 10px;"></asp:Label>
            <asp:TextBox ID="UsernameTextBox" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="Label2" runat="server" Text="Password" style="margin-left: 3px; margin-right: 11px;"></asp:Label>
            <asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Button ID="LogInButton" runat="server" Text="Login" />
            <p>&nbsp;</p>
            <asp:Label ID="Label3" runat="server" Text="No account yet?"></asp:Label>
            <a href="Registration.aspx"><p>Register here</p></a>
        </div>
    </form>
</body>
</html>
