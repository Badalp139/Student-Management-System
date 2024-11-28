<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentMain.aspx.cs" Inherits="Student_Management_System.Admin.PaymentMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    h1{
        background-color:green;
        color:yellow;
        text-align:center;
    }
    .auto-style1 {
        width: 100%;
    }
        .auto-style2 {
            width: 581px;
        }
        .auto-style3 {
            width: 581px;
            height: 31px;
        }
        .auto-style4 {
            height: 31px;
        }
    </style>
</head>
<body>
    <h1>Welcome to Payment Form</h1>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" NavigateUrl="~/Admin/AdminMainForm.aspx">Back To Main</asp:HyperLink>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:HyperLink ID="hplDoPayment" runat="server" NavigateUrl="~/Admin/PaymentDueForm.aspx">Do Payment/Know Due Amount</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4">
                        <asp:HyperLink ID="hyperViewFeeStatement" runat="server" NavigateUrl="~/Admin/ViewFeeStatementForm.aspx">View Fee Statement</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Admin/AdminMainForm.aspx">Back to Admain Main</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
