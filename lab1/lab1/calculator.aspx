<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calculator.aspx.cs" Inherits="lab1.Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculator</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/MyStyle.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="row">
            <asp:Label runat="server" class="col-md-2" ForeColor="Red">Operand 1:</asp:Label>
            <asp:TextBox runat="server" class="col-md-10" placeholder="Enter here"></asp:TextBox>
        </div>

        <div>
            <asp:Button runat="server" Text="+" />    
            <asp:Button runat="server" Text="-" />    
            <asp:Button runat="server" Text="x" />    
            <asp:Button runat="server" Text="/" />    
        </div>

        <div class="row">
            <asp:Label runat="server" class="col-md-2" ForeColor="Red">Operand 2:</asp:Label>
            <asp:TextBox runat="server" class="col-md-10" placeholder="Enter here"></asp:TextBox><br />
        </div>

        <div class="row">
            <asp:Label runat="server" class="col-md-2" ForeColor="Red">Result:</asp:Label>
            <asp:Textbox runat="server" class="col-md-10" ForeColor="Red" ReadOnly="true" Text="Value"></asp:Textbox>
        </div>
    </div>
    </form>
</body>
</html>
