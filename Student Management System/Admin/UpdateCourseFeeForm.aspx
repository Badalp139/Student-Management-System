<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateCourseFeeForm.aspx.cs" Inherits="Student_Management_System.Admin.UpdateCourseFeeForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 426px;
            font-size: x-large;
        }
        .auto-style3 {
            width: 426px;
            height: 31px;
        }
        .auto-style4 {
            height: 31px;
        }
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style6 {
            width: 426px;
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
    <h1>Update Course Fee</h1>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Select Course Name</td>
                    <td>
                        <asp:DropDownList ID="dropdownCourses" runat="server" AutoPostBack="True" CssClass="auto-style5" Width="196px" OnSelectedIndexChanged="dropdownCourses_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Fee</td>
                    <td>
                        <asp:Label ID="lblOldFee" runat="server" CssClass="auto-style5" Text="Old Fee is here"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style6">Enter New Fee</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtNewFee" runat="server" CssClass="auto-style5" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnUpdate" runat="server" BackColor="#0000CC" CssClass="auto-style5" ForeColor="White" OnClick="btnUpdate_Click" Text="Update" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="lblMessage" runat="server" CssClass="auto-style5" Font-Bold="True" ForeColor="Blue" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
