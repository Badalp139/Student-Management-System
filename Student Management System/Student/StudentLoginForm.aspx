<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentLoginForm.aspx.cs" Inherits="Student_Management_System.Student.StudentLoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        h1{
            background-color:aqua;
            color:darkblue;
            text-align:center;

        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 514px;
            font-size: x-large;
        }
        .auto-style3 {
            width: 514px;
            height: 30px;
        }
        .auto-style4 {
            height: 30px;
        }
        .auto-style5 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <h1>Student Login Form</h1>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Regno</td>
                    <td>
                        <asp:TextBox ID="txtRegNo" runat="server" BackColor="#FFFFCC" CssClass="auto-style5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style2">Password</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" BackColor="#FFFFCC" CssClass="auto-style5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnLogin" runat="server" BackColor="#6600FF" CssClass="auto-style5" ForeColor="White" OnClick="btnLogin_Click" Text="Login" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblMessage" runat="server" CssClass="auto-style5" ForeColor="Red" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
