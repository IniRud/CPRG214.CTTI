<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="CPRG214.CTTI.App.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 12px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="uxInstructors" runat="server" Width="561px">
            </asp:GridView>
        </div>
        <br /><br />
        <div>
            <table>
                <tr>
                    <td>First Name:</td><td>
                        <asp:TextBox ID="uxFirstName" runat="server"></asp:TextBox></td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="First Name is required" ControlToValidate="uxFirstName" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Last Name:</td><td>
                        <asp:TextBox ID="uxLastName" runat="server"></asp:TextBox></td>
                    <td class="auto-style1">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name is required" ControlToValidate="uxLastName" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="uxSubmit" runat="server" Text="Submit" OnClick="uxSubmit_Click" /></td>

                </tr>
            </table>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        </div>
    </form>
</body>
</html>
