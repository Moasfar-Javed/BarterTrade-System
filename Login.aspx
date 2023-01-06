<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BarterOEL.Login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" CssClass="lineskip" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="username" CssClass="lineskip" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label2" CssClass="lineskip" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="password" CssClass="lineskip" runat="server"></asp:TextBox><br />
            <asp:Button ID="submit" runat="server" Text="Login" OnClick="submit_Click" />
            <br />
            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
            <asp:Label ID="Label3" runat="server"  CssClass="lineskip" Text="Don't have an account?"></asp:Label>
            <asp:Button ID="noacc" runat="server" Text="Register" OnClick="noacc_Click" />

        </div>
    </form>
</body>
</html>
