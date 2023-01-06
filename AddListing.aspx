<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddListing.aspx.cs" Inherits="BarterOEL.AddListing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="name" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Price"></asp:Label>
            <asp:TextBox ID="price" runat="server"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="Image"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Add Listing" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
