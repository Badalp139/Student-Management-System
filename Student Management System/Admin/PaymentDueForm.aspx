<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentDueForm.aspx.cs" Inherits="Student_Management_System.Admin.PaymentDueForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
h1{
    background-color:orange;
    color:black;
    text-align:center;
}
.auto-style1 {
    width: 100%;
}
        .auto-style2 {
            width: 383px;
            font-size: x-large;
        }
        .auto-style3 {
            width: 383px;
            height: 31px;
        }
        .auto-style4 {
            height: 31px;
        }
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style6 {
            width: 383px;
            height: 31px;
            font-size: x-large;
        }
        .auto-style7 {
            height: 31px;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <h1 class="auto-style5">View Due Amount and Pay Now</h1>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" NavigateUrl="~/Admin/PaymentMain.aspx">Back To MainBack To Payment Main</asp:HyperLink>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Select RegNo</td>
                    <td>
                        <asp:TextBox ID="txtRegNo" runat="server" CssClass="auto-style5"></asp:TextBox>
                        <asp:Button ID="btnShow" runat="server" OnClick="btnShow_Click" Text="Show" CssClass="auto-style5" />
                    &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblStudentResult" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4">
                        <asp:Label ID="lblName" runat="server" CssClass="auto-style5" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="lblCourse" runat="server" CssClass="auto-style5" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4">
                        <asp:Label ID="lblMobile" runat="server" CssClass="auto-style5" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4">
                        <asp:Label ID="lblFinalFeeAmount" runat="server" ForeColor="Blue" Text="Label" CssClass="auto-style5"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblFeePaid" runat="server" ForeColor="#009933" Text="Label" CssClass="auto-style5"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="LblDueAmount" runat="server" ForeColor="Red" Text="Label" CssClass="auto-style5"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Enter Amount to pay</td>
                    <td>
                        <asp:TextBox ID="txtAmount" runat="server" CssClass="auto-style5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Payment Mode</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style5">
                            <asp:ListItem>Paument Mode</asp:ListItem>
                            <asp:ListItem>Cash</asp:ListItem>
                            <asp:ListItem>UPI</asp:ListItem>
                            <asp:ListItem>Debit Card</asp:ListItem>
                            <asp:ListItem>Credit Card</asp:ListItem>
                        </asp:DropDownList>
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
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="auto-style5" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Label ID="lblMessage" runat="server" ForeColor="#CC00CC" Text="Label" CssClass="auto-style5"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style5" NavigateUrl="~/Admin/AdminMainForm.aspx">Back To Admin Home</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
