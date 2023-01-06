<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BarterOEL.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="username" runat="server" CssClass="lineskip" Text="Username"></asp:Label>
            <asp:TextBox ID="TextBox1" CssClass="lineskip" runat="server"></asp:TextBox>
            <asp:Label ID="pass" runat="server" CssClass="lineskip" Text="Password"></asp:Label>
            <asp:TextBox ID="TextBox2" CssClass="lineskip" runat="server"></asp:TextBox>
            <asp:Label ID="confirmpass" runat="server" CssClass="lineskip" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="TextBox3" CssClass="lineskip" runat="server"></asp:TextBox>
            <asp:Button ID="submit" runat="server" CssClass="lineskip" Text="Register" OnClick="submit_Click" />
            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
