<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <label runat="server">Enter First Number</label>
            <asp:TextBox runat="server"  ID="txtfno" />
            <br />

            <label runat="server">Enter Second Number</label>
            <asp:TextBox runat="server"  ID="txtsno" />
            <br />
            
            <br />
            <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
            <br />
            <asp:TextBox ID="txtans" runat="server"></asp:TextBox>
            
        </div>
    </form>
</body>
</html>
