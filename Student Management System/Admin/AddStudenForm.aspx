<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddStudenForm.aspx.cs" Inherits="Student_Management_System.Admin.AddStudenForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            height: 31px;
        }

        .auto-style3 {
            font-size: x-large;
        }
    </style>
</head>
<body bgcolor="lightblue">
    <h1 align="center" class="auto-style3">Welcome To Admin</h1>
    <h2 align="center" class="auto-style3">Student Registration Form</h2>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" NavigateUrl="~/Admin/AdminMainForm.aspx">Back To Main</asp:HyperLink>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Name</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" CssClass="auto-style3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Password</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="auto-style3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style3">Gender</td>
                    <td>
                        <asp:RadioButton ID="radioMale" runat="server" CssClass="auto-style3" GroupName="Gender" Text="Male" />
                        <span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                        <asp:RadioButton ID="radioFemale" runat="server" CssClass="auto-style3" GroupName="Gender" Text="Female" />
                        <span class="auto-style3">&nbsp;&nbsp;&nbsp; </span></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Course</td>
                    <td>
                        <asp:DropDownList ID="dropDownCourse" runat="server" CssClass="auto-style3" OnSelectedIndexChanged="dropDownCourse_SelectedIndexChanged">
                            <asp:ListItem>Select Course</asp:ListItem>
                            <asp:ListItem>Java FullStack</asp:ListItem>
                            <asp:ListItem>DotNet FullStack</asp:ListItem>
                            <asp:ListItem>Python FullStack</asp:ListItem>
                        </asp:DropDownList>
                        <span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                        <asp:Label ID="lblShowCourseFee" runat="server" CssClass="auto-style3" ForeColor="#CC00FF" Text="Course Fee will display here"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Final Fee</td>
                    <td>
                        <asp:TextBox ID="txtFinalFee" runat="server" CssClass="auto-style3" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Fee paid(1st instelment/Total Amount)</td>
                    <td>
                        <asp:TextBox ID="txtFeePaid" runat="server" CssClass="auto-style3" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Payment Mode</td>
                    <td>
                        <asp:DropDownList ID="dropdownPaymentMode" runat="server" CssClass="auto-style3">
                            <asp:ListItem>Select Payment Mode</asp:ListItem>
                            <asp:ListItem>Cash</asp:ListItem>
                            <asp:ListItem>UPI</asp:ListItem>
                            <asp:ListItem>Debit Card</asp:ListItem>
                            <asp:ListItem>Net Banking</asp:ListItem>
                            <asp:ListItem>Credit Card</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">MobilNo</td>
                    <td>
                        <asp:TextBox ID="txtMobile" runat="server" CssClass="auto-style3" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Email Id</td>
                    <td>
                        <asp:TextBox ID="txtEmailId" runat="server" CssClass="auto-style3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Address</td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="auto-style3" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">PinCode</td>
                    <td>
                        <asp:TextBox ID="txtPinCode" runat="server" CssClass="auto-style3" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Graduation/UG</td>
                    <td>
                        <asp:DropDownList ID="dropdownGraduation" runat="server" CssClass="auto-style3">
                            <asp:ListItem>Select Course</asp:ListItem>
                            <asp:ListItem>B.Tech</asp:ListItem>
                            <asp:ListItem>BCA</asp:ListItem>
                            <asp:ListItem Value="BSC"></asp:ListItem>
                            <asp:ListItem Value="MCA"></asp:ListItem>
                            <asp:ListItem>B.Com</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Branch</td>
                    <td>
                        <asp:TextBox ID="txtBranch" runat="server" CssClass="auto-style3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Year of Passing</td>
                    <td>
                        <asp:TextBox ID="txtYOP" runat="server" CssClass="auto-style3" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td class="auto-style3">Persentage</td>
                    <td>
                        <asp:TextBox ID="txtPersentageGrad" runat="server" CssClass="auto-style3"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnRegister" runat="server" CssClass="auto-style3" OnClick="btnRegister_Click" Text="Submit" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblMessage" runat="server" CssClass="auto-style3" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" NavigateUrl="~/Admin/AdminMainForm.aspx">Back To Main</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
