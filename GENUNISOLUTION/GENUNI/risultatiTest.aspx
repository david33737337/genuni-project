<%@ Page Language="C#" AutoEventWireup="true" CodeFile="risultatiTest.aspx.cs" Inherits="risultatiTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--scelta del corso--%>
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>

            <%--risultati--%>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
