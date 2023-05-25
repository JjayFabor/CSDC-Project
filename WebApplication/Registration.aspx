<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center; margin-top: 10%; margin-bottom: 10%;">
            <asp:Label ID="Label2" runat="server" Text="User ID" style="margin-left: 21px; margin-right: 10px;"></asp:Label>
            <asp:TextBox ID="UserIDTextBox" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="Label3" runat="server" Text="Username" style="margin-left: 8px; margin-right: 10px;"></asp:Label>
            <asp:TextBox ID="UsernameTextBox" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="Label4" runat="server" Text="Password" style="margin-left: 11px; margin-right: 10px;"></asp:Label>
            <asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="Label5" runat="server" Text="Email" style="margin-left: 34px; margin-right: 10px;"></asp:Label>
            <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="Label6" runat="server" Text="First Name" style="margin-left: 0px; margin-right: 10px;"></asp:Label>
            <asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Label ID="Label7" runat="server" Text="Last Name" style="margin-left: 3px; margin-right: 10px;"></asp:Label>
            <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox>
            <br /><br />
            <asp:Button ID="Button1" runat="server" Text="Register" />
            <p>&nbsp;</p>
            <asp:Label ID="Label1" runat="server" Text="Already have an account?"></asp:Label>
            <a href="Login.aspx"><p>Login here</p></a>
        </div>
    </form>
</body>
</html>
