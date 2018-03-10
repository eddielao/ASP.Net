<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="lab1.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label runat="server">Operand 1:</asp:Label>
        <asp:TextBox runat="server" Text="Enter here"></asp:TextBox><br />
        <asp:Button runat="server" Text="+" />
        <asp:Button runat="server" Text="-" />
        <asp:Button runat="server" Text="x" />
        <asp:Button runat="server" Text="/" /><br />
        <asp:Label runat="server">Operand 2:</asp:Label>
        <asp:TextBox runat="server" Text="Enter here"></asp:TextBox><br />
        <asp:Label runat="server">Result:</asp:Label>
        <asp:Label runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
