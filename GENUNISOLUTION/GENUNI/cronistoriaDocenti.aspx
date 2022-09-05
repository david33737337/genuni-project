<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cronistoriaDocenti.aspx.cs" Inherits="cronistoriaDocenti" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--label per nome e cognome--%>
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>

                <%-- foto profilo --%>
            <asp:Image ID="Image1" runat="server" />

                <%-- cv --%>
            <asp:Literal ID="Literal2" runat="server"></asp:Literal>

                <%-- skills --%>
            <asp:Literal ID="Literal3" runat="server"></asp:Literal>

            <%-- corsi precedenti con classe --%>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
