<%@ Page Language="C#" AutoEventWireup="true" CodeFile="corsiDegliStudenti.aspx.cs" Inherits="corsiDegliStudenti" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--info studente--%>

            <%-- foto profilo, nome, cognome --%>
            <asp:Image ID="imgStudente" runat="server" />                
            
            <asp:Literal ID="ltlNome" runat="server"></asp:Literal>
            
            <asp:Literal ID="LtlCognome" runat="server"></asp:Literal>
            
            <%-- storico corsi --%>
            <asp:GridView ID="grvCorsiStudenti" runat="server"></asp:GridView>
        </div>
    </form>
</body>
</html>
