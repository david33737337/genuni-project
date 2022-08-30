<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SituazioneStudenti.aspx.cs" Inherits="situazioneStudenti" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--elenco studenti con carosel simile a asssegnazioneDocenti--%>

            <%--più info sullo studente selezionato--%>
            <%--label per nome e cognome--%>
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>

                <%-- foto profilo --%>
            <asp:Image ID="Image1" runat="server" />

                <%-- corsi in corso --%>
            <asp:Literal ID="Literal2" runat="server"></asp:Literal>

                <%-- storico corsi --%>
            <asp:Literal ID="Literal3" runat="server"></asp:Literal>
        </div>
    </form>
</body>
</html>
