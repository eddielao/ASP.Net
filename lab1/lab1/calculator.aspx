<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calculator.aspx.cs" Inherits="lab1.Calculator" EnableSessionState="True" %>

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
    <form id="form1" runat="server" defaultbutton="btnClear">
    <div class="container">
        <div class="row">
            <asp:Label runat="server" class="col-md-2" ForeColor="Red" TabIndex="-1">Operand 1:</asp:Label>
            <asp:TextBox runat="server" class="col-md-10" placeholder="Enter here" ID="txtOp1" TabIndex="2"></asp:TextBox>
        </div>

        <div class="text-center">
            <asp:ImageButton runat="server" BorderWidth="0" class="btn" CommandName="Add" ImageURL=".\Images\adds.png" 
                OnClick="Calculate_Command" TabIndex ="4" />
            <asp:ImageButton runat="server" BorderWidth="0" class="btn" CommandName="Subtract" ImageURL=".\Images\subtract.png" 
                OnClick="Calculate_Command" TabIndex ="5" />
            <asp:ImageButton runat="server" BorderWidth="0" class="btn" CommandName="Multiply" ImageURL=".\Images\multiply.png" 
                OnClick="Calculate_Command" TabIndex ="6" />
            <asp:ImageButton runat="server" BorderWidth="0" class="btn" CommandName="Divide" ImageURL=".\Images\divide.png" 
                OnClick="Calculate_Command" TabIndex ="7" />
        </div>

        <div class="row">
            <asp:Label runat="server" class="col-md-2" ForeColor="Red" TabIndex="-1">Operand 2:</asp:Label>
            <asp:TextBox runat="server" class="col-md-10" placeholder="Enter here" ID="txtOp2" TabIndex="3"></asp:TextBox><br />
        </div>

        <div class="row">
            <asp:Label runat="server" class="col-md-2" ForeColor="Red" TabIndex="-1">Result:</asp:Label>
            <asp:Textbox runat="server" class="col-md-8" ForeColor="Red" ReadOnly="true" Text="Value" ID="txtAns" TabIndex="-1"></asp:Textbox>
            <asp:Button runat="server" Text="Clear" ID="btnClear" OnClick="btnClear_Click" TabIndex="1" />
        </div>

        <div class="row">
            <asp:Label runat="server" class="col-md-2" TabIndex="-1">Operation Counter: </asp:Label>
            <asp:Label runat="server" class="col-md-2" ID="lblCount" TabIndex="-1"></asp:Label>
        </div>
    </div>
    </form>
</body>
</html>
