<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="BarterOEL.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="LISTINGS"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Add new" OnClick="Button1_Click" />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true"
    OnPageIndexChanging="OnPageIndexChanging" PageSize="10">
    <Columns>
        <asp:BoundField ItemStyle-Width="150px" DataField="name" HeaderText="Item Name" />
        <asp:BoundField ItemStyle-Width="150px" DataField="price" HeaderText="Points Price" />
        <asp:BoundField ItemStyle-Width="150px" DataField="imagedata" HeaderText="Image" />
    </Columns>
</asp:GridView>
        </div>
    </form>
</body>
</html>
