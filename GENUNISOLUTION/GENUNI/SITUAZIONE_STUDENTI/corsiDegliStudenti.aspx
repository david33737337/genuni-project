<%@ Page Language="C#" AutoEventWireup="true" CodeFile="corsiDegliStudenti.aspx.cs" Inherits="corsiDegliStudenti" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <%--info studente--%>

            <%-- foto profilo, nome, cognome --%>
            <asp:Image ID="imgStudente" runat="server" />                
            
            <asp:Literal ID="ltlNome" runat="server"></asp:Literal>
            
            <asp:Literal ID="LtlCognome" runat="server"></asp:Literal>
            </p>
        <p>
            <%-- storico corsi --%>
            <asp:GridView ID="grvCorsiStudenti" runat="server"></asp:GridView>
        </p>
    </form>
</body>
</html>
