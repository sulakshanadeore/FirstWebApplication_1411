<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationsDemo.aspx.cs" Inherits="WebApplication1.ValidationsDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" Height="528px">
                <br />
                <asp:Label ID="Label1" runat="server" Text="Enter Name:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="335px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name is compulsory field" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Enter Age:"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Height="16px" Width="335px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Age is required"></asp:RequiredFieldValidator>
                &nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Age must be greater than 16 and smaller than 60" MaximumValue="60" MinimumValue="16"></asp:RangeValidator>
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Text="Select Payment Mode:"></asp:Label>
                <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="paymode" Text="Cash" />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="paymode" Text="Debit Card" />
                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="paymode" OnCheckedChanged="RadioButton3_CheckedChanged" Text="Credit Card" />
                <asp:RadioButton ID="RadioButton4" runat="server" GroupName="paymode" Text="UPI" />
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Enter Email:"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" Height="16px" Width="335px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Pls enter a valid email id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Enter Password:"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" Height="16px" Width="335px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Passwords donot match.. pls check your passwords"></asp:CompareValidator>
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" Text="Confirm Password:"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" Height="16px" Width="335px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Button" />
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                <br />
                <br />
                <br />
                <br />
                <br />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
