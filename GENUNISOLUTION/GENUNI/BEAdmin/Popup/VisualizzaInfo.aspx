﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VisualizzaInfo.aspx.cs" Inherits="BEAdmin_Popup_VisualizzaInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <img id="imgAvatar" runat="server"  width="100"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblTitolo" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblDescrizione" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                </table>
        </div>
    </form>
</body>
</html>
