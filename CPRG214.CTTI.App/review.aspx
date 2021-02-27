<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="review.aspx.cs" Inherits="CPRG214.CTTI.App.review" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="uxCourses" runat="server" AutoPostBack="True" OnSelectedIndexChanged="uxCourses_SelectedIndexChanged" Width="296px">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="uxDisplay" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
