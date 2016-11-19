<%@ Page Title="" Language="C#" MasterPageFile="~/MiMusica.Master" AutoEventWireup="true" CodeBehind="Escuchar.aspx.cs" Inherits="MiMusica.Escuchar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
      // Load the IFrame Player API code asynchronously.
      var tag = document.createElement('script');
      tag.src = "https://www.youtube.com/player_api";
      var firstScriptTag = document.getElementsByTagName('script')[0];
      firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
      // Replace the 'ytplayer' element with an <iframe> and
      // YouTube player after the API code downloads.
      var player;
      function onYouTubePlayerAPIReady() {
        player = new YT.Player('ytplayer', {
          height: '360',
          width: '500',
          videoId: '9lw1i0riTds'
        });
      }

    </script>

    <style>
        .Cuadro{
            background: rgba(0,0,0,0.7);
            margin:100px auto;
            width:72%;
            border-radius:20px;
            color:white;
        }
        .Cuadro h1{
            padding:10px;
        }
        #cuadro2{
            float:right;
        }
        #cuadro2 ol li{
            margin:10px 10px 10px 50px;
            width:300px;
            padding:10px;
        }
        #cuadro2 ol{
            margin:20px;
            color:black;
        }
        #cuadro2 ol div{
            margin-top:5px;
            margin-left:-25px;
            background-color:rgb(203, 203, 193);
            width:400px; 
        }
        #cuadro2 ol div > #boton{
            float:right; 
            background-color:rgb(213, 221, 32); 
            padding:5px; 
            margin-right:10px; 
            width:50px;
            text-align:center;
        }
        #cuadro2 ol div > #boton:hover{
            opacity:0.7;
            background-color:rgb(243, 61, 61);
            color:white;
        }
        #ytplayer{
            margin:20px;
            border-radius:20px;
        }
    </style>
    <div class="Cuadro">
        <h1 style="color:yellow;">Escuchar</h1>
        <p style="padding:10px;">Escucha las mejores canciones de tus artistas favoritos</p>
        <h3 style="padding:10px; color:green;">El tema de la semana</h3>
        <div id="cuadro2">
            <ol>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="idCanciones" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div>
                            <div id="boton"><a href="Escuchar.aspx?id=<%#Eval("idCanciones") %>" style="text-decoration:none;">Oír</a></div>
                            <li><%#Eval("nombreCanciones") %> (<%#Eval("nombreArtista") %>)</li>                            
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </ol>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:db_musicaConnectionString %>' SelectCommand="SELECT Canciones.idCanciones, Canciones.nombreCanciones, Canciones.generoId, Canciones.videoId, Artista.idArtista, Artista.nombreArtista, Artista.nacionalidad, Artista.descripcion, Artista.imagen, Artista.noticiaId, Artista.cancionId, Artista.descripcionCompleta, Artista.generoId AS Expr1 FROM Canciones INNER JOIN Artista ON Canciones.idCanciones = Artista.cancionId"></asp:SqlDataSource>
        </div>
        <div id="ytplayer"></div>
        <div style="clear:both;"></div>
    </div>
</asp:Content>
