<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PreparazioneCorso.aspx.cs" Inherits="preparazioneCorso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <%--dublica corso--%>
        <asp:Label ID="Label6" runat="server" Text="Scegliere un corso da duplicare: "></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
        <asp:Button ID="Button4" runat="server" Text="Duplica" />

            <%--titolo--%>
            <asp:Label ID="Label1" runat="server" Text="Titolo:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

            <%--tipo--%>
            <asp:Label ID="Label2" runat="server" Text="Tipo: "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            
            <%--descrizione--%>
            <asp:Label ID="Label3" runat="server" Text="Descrizione: "></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            
            <%--data di partenza--%>
            <asp:Label ID="Label4" runat="server" Text="Data di partenza: "></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            
            <%--scelta dell' avatar del corso (formato estratto dal bottone "aggiungi corso")--%>
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            <asp:FileUpload ID="UploadAvatar" runat="server" />


            <%--bottone scelta docenti--%>
            <asp:Button ID="Button2" runat="server" href="assegnazioneDocenti.aspx" Text="aggiungi docenti" />

            <%--bottone scelta materie--%>
            <asp:Button ID="Button3" runat="server" href="definizioneMaterie.aspx" Text="aggiungi materie" />

            <%--bottone inserisci corso--%>
            <asp:Button ID="Button1" runat="server" Text="aggiungi corso" OnClick="Button1_Click" />
            
    </form>
</body>
</html>
