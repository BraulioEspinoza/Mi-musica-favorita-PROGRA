<%@ Page Title="" Language="C#" MasterPageFile="~/MiMusica.Master" AutoEventWireup="true" CodeBehind="ver_Artista.aspx.cs" Inherits="MiMusica.ver_Artista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .contenedorArtista{
            margin:100px auto;
            width:800px;
            color:white;
            background-color:rgba(0,0,0,0.5);
            border-radius:20px;
        }
        .contenedorArtista img{
            float:left;
            border-radius:20px;
            margin:30px 10px;
        }
        .contenedorArtista h1{
            margin:20px 0px -10px 40px;
            padding:10px;
        }
    </style>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <div class="contenedorArtista">
                <h1><%#Eval("nombreArtista") %></h1>
                <img src="<%#Eval("imagen") %>" width="400" height="400" />
                <em>Genero: <%#Eval("tipoGenero") %></em><br />
                <em>Origen: <%#Eval("nacionalidad") %> </em>
                <p style="margin-top:10px;"><%#Eval("descripcionCompleta") %></p>
                <div style="clear:both;"></div>
            </div>
        </ItemTemplate>
    </asp:Repeater>

    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:db_musicaConnectionString %>' SelectCommand="SELECT Artista.idArtista, Artista.nombreArtista, Artista.nacionalidad, Artista.descripcion, Artista.imagen, Artista.noticiaId, Artista.cancionId, Artista.descripcionCompleta, Artista.generoId, Genero.idGenero, Genero.tipoGenero FROM Artista INNER JOIN Genero ON Artista.generoId = Genero.idGenero WHERE (Artista.idArtista = @idArtista)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="codi" Name="idArtista" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
