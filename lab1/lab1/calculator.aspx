<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calculator.aspx.cs" Inherits="lab1.Calculator" EnableSessionState="True" 
    MasterPageFile="~/MyMaster.Master" Title="Calculator" %>

<asp:Content ID="CalculatorHead" ContentPlaceHolderID="head" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/MyStyle.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</asp:Content>

<asp:Content ID="CalculatorMain" ContentPlaceHolderID="main" runat="server">
    <div class="container">
        <div class="row">
            <label class="col-md-2" tabindex="-1">Name:</label>
            <asp:TextBox runat="server" class="col-md-3 rounded" ID="txtName" placeholder="Enter your name" TabIndex="8"></asp:TextBox>
        </div>

        <div class="row">
            <asp:Label runat="server" class="col-md-2" ForeColor="Red" TabIndex="-1">Operand 1:</asp:Label>
            <asp:TextBox runat="server" class="col-md-6 rounded" placeholder="Enter here" ID="txtOp1" TabIndex="2"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" class="col-md-4 text-danger" ControlToValidate="txtOp1" ID="rfvOP1" 
                Display="Dynamic" Enabled="true" Text="A numeric value is required."  ErrorMessage="Operand 1 missing value."
                ></asp:RequiredFieldValidator>
            <asp:RangeValidator runat="server" class="col-md-4 text-danger" ControlToValidate="txtOp1" ID="rvOp1" 
            Display="Dynamic" Enabled="true" Text="Not a valid value." ErrorMessage="Operand 1 numeric value range must be within +/-17976931348623157." 
                Type="Double" MaximumValue="17976931348623157" MinimumValue="-17976931348623157"></asp:RangeValidator>
        </div>

        <div class="text-center">
            <asp:ImageButton runat="server" BorderWidth="0" class="btn" CommandName="Add" ImageURL=".\Images\add-w.png" 
                OnClick="Calculate_Command" TabIndex ="4" />
            <asp:ImageButton runat="server" BorderWidth="0" class="btn" CommandName="Subtract" ImageURL=".\Images\subtract-w.png" 
                OnClick="Calculate_Command" TabIndex ="5" />
            <asp:ImageButton runat="server" BorderWidth="0" class="btn" CommandName="Multiply" ImageURL=".\Images\multiply-w.png" 
                OnClick="Calculate_Command" TabIndex ="6" />
            <asp:ImageButton runat="server" BorderWidth="0" class="btn" CommandName="Divide" ImageURL=".\Images\divide-w.png" 
                OnClick="Calculate_Command" TabIndex ="7" />
        </div>

        <div class="row">
            <asp:Label runat="server" class="col-md-2" ForeColor="Red" TabIndex="-1">Operand 2:</asp:Label>
            <asp:TextBox runat="server" class="col-md-6 rounded" placeholder="Enter here" ID="txtOp2" TabIndex="3"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" class="col-md-4 text-danger" ControlToValidate="txtOp2" ID="RequiredFieldValidator1" 
                Display="Dynamic" Enabled="true" Text="A numeric value is required."  ErrorMessage="Operand 2 missing value."
                ></asp:RequiredFieldValidator>
            <asp:RangeValidator runat="server" class="col-md-4 text-danger" ControlToValidate="txtOp2" ID="RangeValidator1" 
            Display="Dynamic" Enabled="true" Text="Value a not valid." ErrorMessage="Operand 2 numeric value must be within range +/-17976931348623157." 
                Type="Double" MaximumValue="17976931348623157" MinimumValue="-17976931348623157"></asp:RangeValidator>
        </div>

        <div class="row">
            <asp:Label runat="server" class="col-md-2" ForeColor="Red" TabIndex="-1">Result:</asp:Label>
            <asp:Textbox runat="server" class="col-md-6 rounded" ForeColor="Red" ReadOnly="true" Text="Value" ID="txtAns" TabIndex="-1"></asp:Textbox>
            <asp:Button runat="server" class="rounded-right" Text="Clear" ID="btnClear" OnClick="btnClear_Click" TabIndex="1" />
        </div>

        <div class="row">
            <asp:Label runat="server" class="col-md-2" TabIndex="-1">Operation Counter: </asp:Label>
            <asp:Label runat="server" class="col-md-2" ID="lblCount" TabIndex="-1"></asp:Label>
        </div>

        <div class="row">
            <asp:Label runat="server" class="col-md-2" TabIndex="-1">Hit Counter: </asp:Label>
            <asp:Label runat="server" class="col-md-2" ID="lblHit" TabIndex="-1"></asp:Label>
        </div>

        <div class="row">
            <span class="col-md-2"></span>
            <asp:ValidationSummary ID="ValidationSummary" runat="server" class="col-md-10 text-danger" 
                HeaderText="See below for error detail:" />
        </div>
    </div>
</asp:Content>