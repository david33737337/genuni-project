<%@ Page Language="C#" AutoEventWireup="true" CodeFile="assegnazioneDocenti.aspx.cs" Inherits="assegnazioneDocenti" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--popup--%>
            <p>
                <%--ddl materie non assegnate del corso selezionato--%>
                <asp:Label ID="lblMateria" runat="server" Text="Materia: "></asp:Label>
                <asp:DropDownList ID="ddlMaterie" runat="server"></asp:DropDownList>
            </p>
            <p>
                <%--barra di ricerca del docente con proprietà whentxtchange--%>
                <asp:Label ID="Label1" runat="server" Text="Cerca per competenze"></asp:Label><br />
                <asp:TextBox ID="txtRicercaDocente" runat="server" TextMode="Search" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            </p>
            <p>
                <%--più info sul docente scelto--%>
                <%-- foto profilo --%>
                <asp:Image ID="imgProfilo" runat="server" />

                <%--label per nome e cognome--%>
                <asp:Literal ID="ltlNomeCognome" runat="server"></asp:Literal>
                <br />

                <%-- cv --%>
                <asp:Literal ID="ltlCv" runat="server"></asp:Literal>
                <br />
                <%-- skills --%>
                <asp:Literal ID="ltlSkills" runat="server"></asp:Literal>
            </p>
            <p>
                <%--vai a cronistoria docente selezionato--%>
                <asp:Button ID="btnCronistoriaDocente" runat="server" Text="Cronistoria docente" OnClick="btnCronistoriaDocente_Click"></asp:Button>

                <%--seleziona prof--%>
                <asp:Button ID="btnSelezionaDocente" runat="server" Text="Scegli docente" />
            </p>
        </div>
    </form>
</body>
</html>
