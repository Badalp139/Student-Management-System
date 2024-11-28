<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentMainForm.aspx.cs" Inherits="Student_Management_System.Student.StudentMainForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        h1 {
            background-color: aqua;
            color: darkblue;
            text-align: center;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 424px;
            font-size: x-large;
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            width: 424px;
            font-size: x-large;
            height: 45px;
        }
        .auto-style5 {
            height: 45px;
        }
    </style>
</head>
<body>
    <h1>Welcome to Student Main Form</h1>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblStudentName" runat="server" Font-Bold="True" ForeColor="Blue" Text="Student Name"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:HyperLink ID="hyperViewDueAmount" runat="server" CssClass="auto-style3" NavigateUrl="~/Student/ViewDueAmountForm.aspx">View Due Amount</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:HyperLink ID="hyperViewPaymentStateMent" runat="server" CssClass="auto-style3" NavigateUrl="~/Student/ViewPaymentStatementForm.aspx">View Payment Statement</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:HyperLink ID="hyperChangePassword" runat="server" CssClass="auto-style3" NavigateUrl="~/Student/ChangePasswordForm.aspx">Change Password</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:HyperLink ID="hyperLogOut" runat="server" CssClass="auto-style3" NavigateUrl="~/Student/StudentLoginForm.aspx">LogOut</asp:HyperLink>
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
