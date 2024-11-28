<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLoginForm.aspx.cs" Inherits="Student_Management_System.Admin.AdminLoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        h1{
            background-color:blue;
            color:white;
            text-align:center;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 422px;
            font-size: x-large;
        }
        .auto-style3 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <h1 >Admin Login Form</h1>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">User Id</td>
                    <td>
                        <asp:TextBox ID="txtUserId" runat="server" CssClass="auto-style3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Password</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="auto-style3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnLogin" runat="server" CssClass="auto-style3" OnClick="btnLogin_Click" Text="Login" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblMessage" runat="server" CssClass="auto-style3" ForeColor="Red" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
