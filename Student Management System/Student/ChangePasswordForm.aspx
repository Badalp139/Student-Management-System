<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePasswordForm.aspx.cs" Inherits="Student_Management_System.Student.ChangePasswordForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        h1 {
            background-color:royalblue;
            color:snow;
            text-align: center;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 402px;
            font-size: x-large;
        }
        .auto-style3 {
            width: 331px;
        }
        .auto-style4 {
            width: 402px;
            height: 130px;
        }
        .auto-style5 {
            height: 130px;
        }
        .auto-style6 {
            font-size: x-large;
        }
    </style>

</head>
<body>
    <h1>ChangePassword Form</h1>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Enter RegNo</td>
                    <td>
                        <asp:TextBox ID="txtRegNo" runat="server" BackColor="#FFFFCC" CssClass="auto-style6"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Password</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" BackColor="#FFFFCC" CssClass="auto-style6"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnLogin" runat="server" BackColor="#0066FF" CssClass="auto-style6" ForeColor="Snow" OnClick="btnLogin_Click" Text="Login" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblMessage" runat="server" CssClass="auto-style6" ForeColor="Red" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5">
                        <asp:Panel ID="Panel1" runat="server" CssClass="auto-style6"  Height="327px">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style3">Enter New Password</td>
                                    <td>
                                        <asp:TextBox ID="txtNewPassword" runat="server" BackColor="#FFFFCC"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">Confirm Password</td>
                                    <td>
                                        <asp:TextBox ID="txtConfirmPassword" runat="server" BackColor="#FFFFCC"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">&nbsp;</td>
                                    <td>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtConfirmPassword" ControlToValidate="txtNewPassword" ErrorMessage="Both Password Should be Same" ForeColor="Red"></asp:CompareValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">&nbsp;</td>
                                    <td>
                                        <asp:Button ID="btnSubmit" runat="server" BackColor="#3333CC" ForeColor="White" Text="Submit" OnClick="btnSubmit_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">&nbsp;</td>
                                    <td>
                                        <asp:Label ID="lblChangeMessage" runat="server" ForeColor="Fuchsia" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">&nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
