<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calculator.aspx.cs" Inherits="lab1.Calculator" EnableSessionState="True" 
    Trace="true" %>

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
            <asp:TextBox runat="server" class="col-md-10" placeholder="Enter here" ID="txtOp1"></asp:TextBox>
        </div>

        <div>
            <asp:Button runat="server" class="btn" Text="+" ID="btnAdd" OnClick="btnAdd_Click" />    
            <asp:Button runat="server" class="btn" Text="-" ID="btnMinus" OnClick="btnMinus_Click" />    
            <asp:Button runat="server" class="btn" Text="x" ID="btnMulti" OnClick="btnMulti_Click" />    
            <asp:Button runat="server" class="btn" Text="/" ID="btnDiv" OnClick="btnDiv_Click" />    
        </div>

        <div class="row">
            <asp:Label runat="server" class="col-md-2" ForeColor="Red">Operand 2:</asp:Label>
            <asp:TextBox runat="server" class="col-md-10" placeholder="Enter here" ID="txtOp2"></asp:TextBox><br />
        </div>

        <div class="row">
            <asp:Label runat="server" class="col-md-2" ForeColor="Red">Result:</asp:Label>
            <asp:Textbox runat="server" class="col-md-8" ForeColor="Red" ReadOnly="true" Text="Value" ID="txtAns"></asp:Textbox>
            <asp:Button runat="server" Text="Clear" ID="btnClear" OnClick="btnClear_Click" />
        </div>

        <div class="row">
            <label class="col-md-2">Operation Counter: </label>
            <asp:Label runat="server" class="col-md-2" ID="lblCount"></asp:Label>
        </div>
    </div>
    </form>
</body>
</html>
