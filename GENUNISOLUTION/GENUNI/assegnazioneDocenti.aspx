<%@ Page Language="C#" AutoEventWireup="true" CodeFile="assegnazioneDocenti.aspx.cs" Inherits="assegnazioneDocenti" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div> <%--popup--%>
            <%--ddl materie non assegnate del corso selezionato--%>
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>

            <%--barra di ricerca del docente con proprietà whentxtchange--%> 
            <asp:TextBox ID="TextBox1" runat="server" TextMode="Search" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>

            <%--più info sul docente scelto--%>
                <%--label per nome e cognome--%>
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>

                <%-- foto profilo --%>
            <asp:Image ID="Image1" runat="server" />

                <%-- cv --%>
            <asp:Literal ID="Literal2" runat="server"></asp:Literal>

                <%-- skills --%>
            <asp:Literal ID="Literal3" runat="server"></asp:Literal>

            <%--vai a cronistoria docente selezionato--%>
            <asp:Button ID="Button1" runat="server" Text="Button" />

            <%--seleziona prof--%>
            <asp:Button ID="Button2" runat="server" Text="Button" />

        </div>
    </form>
</body>
</html>
