<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SMSHome.aspx.cs" Inherits="Student_Management_System.SMSHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        h1{
            background-color:Blue;
            color:white;
            text-align:center;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 195px;
            font-size: x-large;
            color: #6600FF;
           
        }
        .auto-style3 {
            
        }
        .auto-style4 {
            width: 195px;
            height: 31px;
            
        }
        .auto-style5 {
            height: 31px;
            
        }
        .auto-style6 {
            font-size: x-large;
            color: #6600FF;
            
        }
        .auto-style7 {
            font-size: x-large;
            color: #6600FF;
        }
        .auto-style8 {
            width: 195px;
            font-size: x-large;
            height: 45px;
            
        }
        .auto-style9 {
            height: 45px;
            
        }
    </style>
</head>
<body bgcolor="aqua">
    <h1>Welcome to Student Management System.</h1>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">
                        <asp:HyperLink ID="hyperAdmin" runat="server" CssClass="auto-style7" Font-Bold="True" ForeColor="#0000CC" NavigateUrl="~/Admin/AdminLoginForm.aspx">login as Admin</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:HyperLink ID="hyperStudent" runat="server" CssClass="auto-style7" Font-Bold="True" ForeColor="Fuchsia" NavigateUrl="~/Student/StudentLoginForm.aspx">Login as Student</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
