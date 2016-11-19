<%@ Page Title="" Language="C#" MasterPageFile="~/MiMusica.Master" AutoEventWireup="true" CodeBehind="Artistas.aspx.cs" Inherits="MiMusica.Artistas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .contenedorPrincipal{
            background: rgba(0,0,0,0.7);
            margin:100px auto;
            width:70%;
            box-shadow:8px 8px 10px 0;
            border-radius:20px;
        }
        .contenedorPrincipal #text > h2{
            padding:20px;
            color:yellow;
            text-transform:uppercase;
        }
        .contenedorPrincipal #text > span{
            padding:20px;
            color:white;
        }
        #textArtistas a > img{
            border-radius:20px;
        }
        #textArtistas a{
            text-decoration:none;
            color:transparent;
        }
        #textArtistas{
            margin:20px 0px 90px 30px;
            display:block;
            }
        #textArtistas a:hover{
            background-color:rgba(0,0,0,0.5);
            opacity:0.2;
            color:white;
        }
        .textBD{
            width:230px;
            margin:-230px auto 0px auto;
        }
    </style>
    <section>
        <div class="contenedorPrincipal">
            <header>
                <div id="text">
                    <h2>Nuestros Artistas</h2>
                    <span><em>Conecta directamente con tus artistas favoritos</em></span>
                </div>
            </header>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="idArtista" DataSourceID="sdsArtistas" RepeatColumns="3">
                    <ItemTemplate>
                        <div id="textArtistas">
                            <a href="ver_Artista.aspx?codi=<%#Eval("idArtista") %>">
                                <img src="<%#Eval("imagen") %>" width="270" height="250"/>
                                <div class="textBD">
                                    <h3><%#Eval("nombreArtista") %></h3>
                                    <p><%#Eval("descripcion") %></p>
                                </div>
                            </a>
                        </div>
                        </ItemTemplate>
                </asp:DataList>
            <asp:SqlDataSource runat="server" ID="sdsArtistas" ConnectionString='<%$ ConnectionStrings:db_musicaConnectionString %>' SelectCommand="SELECT * FROM [Artista]"></asp:SqlDataSource>
        </div>
    </section>
</asp:Content>
