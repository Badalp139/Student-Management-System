<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNewCourseForm.aspx.cs" Inherits="Student_Management_System.Admin.AddNewCourses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 430px;
            font-size: x-large;
        }
        .auto-style3 {
            width: 430px;
            height: 31px;
        }
        .auto-style4 {
            height: 31px;
        }
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style6 {
            height: 31px;
            font-size: x-large;
        }
        .auto-style7 {
            width: 430px;
            height: 31px;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <h1>Add New Course</h1>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Course Name</td>
                    <td>
                        <asp:TextBox ID="txtCourseName" runat="server" CssClass="auto-style5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">Fee</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtFee" runat="server" CssClass="auto-style5" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Duration</td>
                    <td>
                        <asp:TextBox ID="txtDuration" runat="server" CssClass="auto-style5"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="btnAdd" runat="server" BackColor="#0000CC" CssClass="auto-style5" ForeColor="White" OnClick="btnAdd_Click" Text="Add" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4">
                        <asp:Label ID="lblMessage" runat="server" CssClass="auto-style5" ForeColor="#3333CC" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
