﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="definizioneMaterie.aspx.cs" Inherits="definizioneMaterie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblCosto" runat="server" Text="Inserisci il costo della materia: "></asp:Label>
                    <asp:TextBox ID="txtCosto" runat="server" TextMode="Number" placeholder="€"></asp:TextBox>
                </td>
            </tr>
                    <tr>
                <td>
                    <asp:Label ID="lblTitolo" runat="server" Text="Titolo: "></asp:Label>
                    <asp:TextBox ID="txtTitolo" runat="server"></asp:TextBox>
                </td>
            </tr>        <tr>
                <td>
                    <asp:Label ID="lblDescrizione" runat="server" Text="Descrizione: "></asp:Label>
                    <asp:TextBox ID="txtDescrizione" cols="20" rows="2" runat="server"></asp:TextBox>
                </td>
            </tr>        <tr>
                <td>
                    <asp:Label ID="lblIndice" runat="server" Text="Indice:"></asp:Label>
                    <asp:TextBox ID="txtIndice" runat="server"></asp:TextBox>
                </td>
            </tr>  
            <tr><td>
                <asp:Button ID="btnInserisciMaterie" runat="server" Text="Inserisci materia" OnClick="btnInserisciMaterie_Click" />
                </td></tr>
        </table>

        
    </form>
</body>
</html>
