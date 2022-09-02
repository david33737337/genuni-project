<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageTutor.master" AutoEventWireup="true" CodeFile="cronistoriaDocenti.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                     <p>flamengo</p>
            <%--label per nome e cognome--%>
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>

                <%-- foto profilo --%>
            <asp:Image ID="Image1" runat="server" />

                <%-- cv --%>
            <asp:Literal ID="Literal2" runat="server"></asp:Literal>

                <%-- skills --%>
            <asp:Literal ID="Literal3" runat="server"></asp:Literal>

            <%-- corsi precedenti con classe --%>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
</asp:Content>

