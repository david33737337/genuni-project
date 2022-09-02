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
            <asp:DropDownList ID="ddlMaterie" runat="server"></asp:DropDownList>

            <%--barra di ricerca del docente con proprietà whentxtchange--%> 
            <asp:TextBox ID="txtRicercaDocente" runat="server" TextMode="Search" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>

            <%--più info sul docente scelto--%>
                <%--label per nome e cognome--%>
            <asp:Literal ID="ltlNomeCognome" runat="server"></asp:Literal>

                <%-- foto profilo --%>
            <asp:Image ID="imgProfilo" runat="server" />

                <%-- cv --%>
            <asp:Literal ID="ltlCv" runat="server"></asp:Literal>

                <%-- skills --%>
            <asp:Literal ID="ltlSkills" runat="server"></asp:Literal>

            <%--vai a cronistoria docente selezionato--%>
          <asp:Button ID="btnCronistoriaDocente" runat="server" Text="Cronistoria docente" OnClick="btnCronistoriaDocente_Click" ></asp:Button>

            <%--seleziona prof--%>
            <asp:Button ID="btnSelezionaDocente" runat="server" Text="Scegli docente" />

        </div>
    </form>
</body>
</html>
