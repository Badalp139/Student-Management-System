<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewDueAmountForm.aspx.cs" Inherits="Student_Management_System.Student.ViewDueAmountForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        h1 {
            background-color: royalblue;
            color: snow;
            text-align: center;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 350px;
            font-size: x-large;
            font-weight: bold;
        }
        .auto-style3 {
            width: 350px;
            height: 31px;
        }
        .auto-style4 {
            height: 31px;
        }
        .auto-style5 {
            font-size: x-large;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h1>Show Due Amount</h1>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td><span class="auto-style5">&nbsp; </span></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="lblName" runat="server" ForeColor="Blue" Text="Student Name"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblTotalFee" runat="server" CssClass="auto-style5" Font-Bold="True" ForeColor="Blue" Text="Total Fee/Final Fee"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblFeePaid" runat="server" CssClass="auto-style5" Font-Bold="True" ForeColor="#009900" Text="Fee Paid"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblDueAmount" runat="server" CssClass="auto-style5" Font-Bold="True" ForeColor="Red" Text="Due Amount"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
