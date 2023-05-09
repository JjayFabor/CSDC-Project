<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="WebApplication.Main" %>

<%@ Register TagPrefix="uc" TagName="MyUserControl" Src="~/MyUserControl.ascx" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>

</head>
    <body>
        <form id="form1" runat="server">
            <div>
                <asp:Panel ID="Panel1" runat="server" BackColor="#595959" Height="121px">
                    <asp:Label ID="Label1" runat="server" Text="Online Crime Reporting System for Barangay" BorderColor="#595959" BorderWidth="25px" Font-Bold="True" Font-Size="17pt" ForeColor="White" Height="68px" Width="357px"></asp:Label>
                </asp:Panel>
            </div>
            <div class="row">
                <asp:Panel ID="sidePanel" runat="server" Height="1000px" Width="296px" BackColor="#003169" Direction="LeftToRight" Style="margin-right: 0px">
                    <asp:Button ID="btnDashboard" runat="server" Text="Dashboard" Width="277px" BackColor="#003169" BorderStyle="None" ForeColor="White" Height="64px" OnClick="btnDashboard_Click"/>
                    <asp:Button ID="Button2" runat="server" Text="Button 2" Width="277px" BackColor="#003169" BorderStyle="None" ForeColor="White" Height="64px" />
                    <asp:Button ID="Button3" runat="server" Text="Button 3" Width="277px" BackColor="#003169" BorderStyle="None" ForeColor="White" Height="64px" />
                    <asp:Button ID="Button4" runat="server" Text="Button 4" Width="277px" BackColor="#003169" BorderStyle="None" ForeColor="White" Height="64px" />
                    <asp:Button ID="Button5" runat="server" Text="Button 5" Width="277px" BackColor="#003169" BorderStyle="None" ForeColor="White" Height="64px" />
                </asp:Panel>
                <div class="col">
                    <asp:Panel ID="panelContent" runat="server" Height="1000px" Width="100%" BackColor="#dcdcdc">
                    </asp:Panel>

                    <%--this will add an instance of the user control to the page--%>
                    <uc:MyUserControl ID="myControl" runat="server" />
                </div>
            </div>
        </form>

    </body>
</html>
