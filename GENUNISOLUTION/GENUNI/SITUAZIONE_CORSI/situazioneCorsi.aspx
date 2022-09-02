﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTutor.master" AutoEventWireup="true" CodeFile="situazioneCorsi.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="http://static.jquery.com/ui/css/demo-docs-theme/ui.theme.css" type="text/css" media="all" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.10/themes/base/jquery-ui.css" type="text/css" media="all" />


    <script type="text/javascript">

        $(document).ready(function () {

            $('.popupPreparaTest').click(function () {

                var url = '/POPUP/corsi/preparazioneTest.aspx';
                var inserisci = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');

                inserisci.dialog({
                    modal: true,
                    title: 'Preparazione Test',
                    resizable: false,
                    width: 650,
                    height: 350,
                    overlay: { opacity: 0.9, background: 'black' },

                    open: function (type, data) { $(this).parent().appendTo('form'); }
                });

                return false;
            });
        });

        $(document).ready(function () {

            $('.popupPreparaDomande').click(function () {

                var url = '/POPUP/corsi/preparazioneDomande.aspx';
                var inserisci = $('<iframe src="' + url + '" frameborder="0"></iframe>').appendTo('body');

                inserisci.dialog({
                    modal: true,
                    title: 'Preparazione Domande',
                    resizable: false,
                    width: 550,
                    height: 400,
                    overlay: { opacity: 0.9, background: 'black' },

                    open: function (type, data) { $(this).parent().appendTo('form'); }
                });

                return false;
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <p>
        <asp:Label ID="lblEs1" runat="server" Text="I TUOI CORSI"></asp:Label>
    </p>
    <p>
        <%--griglia corsi--%>
        <asp:GridView ID="GridCorsi" runat="server" AutoGenerateSelectButton="True" OnSelectedIndexChanged="grvCorsi_SelectedIndexChanged"></asp:GridView>
    </p>
    <p>
        <%--bottoni--%>
        <asp:Button class="popupPreparaDomande" ID="btnPreparaDomande" runat="server" Text="Prepara domande" />
        <asp:Button ID="btnRisultatiTest" runat="server" Text="Risultati test" OnClick="btnRisultatiTest_Click" />
        <asp:Button ID="popupPreparaTest" runat="server" Text="Crea test" />
    </p>
</asp:Content>

