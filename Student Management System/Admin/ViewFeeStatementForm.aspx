<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewFeeStatementForm.aspx.cs" Inherits="Student_Management_System.Admin.ViewFeeStatementForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 394px;
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            width: 394px;
            font-size: x-large;
        }
        h1{
            background-color:orange;
            color:black;
            text-align:center;
        }
    </style>
</head>
<body>
    <h1>View Fee Statement Form</h1>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" NavigateUrl="~/Admin/PaymentMain.aspx">Back To MainBack To Payment Main</asp:HyperLink>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Enter RegNo</td>
                    <td>
                        <asp:TextBox ID="txtRegno" runat="server" CssClass="auto-style3"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnShowStatement" runat="server" CssClass="auto-style3" Height="51px" OnClick="btnShowStatement_Click" Text="Show Statement" Width="282px" />
&nbsp;&nbsp;
                        <asp:Button ID="btnClear" runat="server" CssClass="auto-style3" Height="50px" OnClick="btnClear_Click" Text="Clear" Width="121px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblMessage" runat="server" Font-Size="X-Large" ForeColor="Red" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style3" Width="373px">
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                        </asp:GridView>
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
            </table>
        </div>
    </form>
</body>
</html>
