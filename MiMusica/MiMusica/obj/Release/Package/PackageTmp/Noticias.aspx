<%@ Page Title="" Language="C#" MasterPageFile="~/MiMusica.Master" AutoEventWireup="true" CodeBehind="Noticias.aspx.cs" Inherits="MiMusica.Noticias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .contenedorNoticia{
            background: rgba(0,0,0,0.7);
            margin:100px auto;
            width:70%;
 
            border-radius:20px;
            color:white;
        }
        .contenedorNoticia #contenedor{
            margin:20px;
        }
        #contenedor img{
            border-radius:20px;
        }
        .contenedorNoticia h1{
            padding:10px;
        }
    </style>
    <div class="contenedorNoticia">
        <h1>Noticias</h1>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="idNoticia" DataSourceID="SqlDataSource1" RepeatColumns="3">
            <ItemTemplate>
                <div id="contenedor">
                    <img src="<%#Eval("imagen") %>" width="270" height="250"/>
                    <em><%#Eval("fecha") %></em>
                    <h3><%#Eval("titulo") %></h3>
                    <p><%#Eval("descripcion") %></p>
                    <p>_____________________________</p>
                </div>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:db_musicaConnectionString %>' SelectCommand="SELECT * FROM [Noticias]"></asp:SqlDataSource>
    </div>
</asp:Content>
