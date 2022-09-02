<%@ Page Language="C#" AutoEventWireup="true" CodeFile="situazioneStudenti.aspx.cs" Inherits="situazioneStudenti" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <%--gridview per tutti gli studenti con pulsante select--%>
            <asp:GridView ID="grvStudenti" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="grvStudenti_SelectedIndexChanged"></asp:GridView>
        </div>
    </form>
</body>
</html>
