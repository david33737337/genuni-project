<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SituazioneCorsi.aspx.cs" Inherits="situazioneCorsi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridCorsi" runat="server" OnSelectedIndexChanged="Page_Load"></asp:GridView>
        </div>
    </form>
</body>
</html>
