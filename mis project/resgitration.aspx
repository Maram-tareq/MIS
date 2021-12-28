<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="resgitration.aspx.cs" Inherits="mis_project.resgitration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: large;
            text-align: center;
            width: 495px;
        }
        .auto-style3 {
            width: 495px;
        }
        .auto-style4 {
            width: 463px;
        }
        .auto-style5 {
            color: #FF0000;
        }
        .auto-style6 {
            font-size: large;
            text-align: center;
            width: 495px;
            height: 29px;
        }
        .auto-style7 {
            width: 463px;
            height: 29px;
        }
        .auto-style8 {
            height: 29px;
        }
        .auto-style9 {
            width: 495px;
            text-align: right;
        }
        .auto-style11 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"><strong>Username:</strong></td>
                <td class="auto-style4">
                    <asp:TextBox ID="username" runat="server" Width="266px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" CssClass="auto-style5" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                    <span class="auto-style5">&nbsp;&nbsp; </span></td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Password:</strong></td>
                <td class="auto-style7">
                    <asp:TextBox ID="pass" runat="server" TextMode="Password" Width="266px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pass" CssClass="auto-style5" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><strong>Confirm password:</strong></td>
                <td class="auto-style4">
                    <asp:TextBox ID="copass" runat="server" TextMode="Password" Width="266px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="copass" CssClass="auto-style5" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                    <span class="auto-style5">&nbsp; </span>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass" ControlToValidate="copass" CssClass="auto-style5" ErrorMessage="must match password"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong>Email:</strong></td>
                <td class="auto-style7">
                    <asp:TextBox ID="email" runat="server" Width="266px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="email" CssClass="auto-style5" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" CssClass="auto-style5" ErrorMessage="Email is invalid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="btn" runat="server" Text="sign up" Width="126px" OnClick="btn_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9"><span class="auto-style11">Already have an account</span>?</td>
                <td class="auto-style4">
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style11" NavigateUrl="~/sign in.aspx">sign in</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
