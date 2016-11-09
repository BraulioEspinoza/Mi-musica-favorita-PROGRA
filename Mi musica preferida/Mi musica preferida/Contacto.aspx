<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="CONTACTO.aspx.cs" Inherits="Mi_musica_preferida.Contacto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        #cuadro {
            background: rgba(0,0,0,0.7);
            padding: 2px 2px 2px 2px;
            margin: 0 13.5% 0 13.5%;
            border-radius: 10px;
            box-shadow: 8px 8px 10px 0;
        }

        #interior {
            position: relative;
            width: 100%;
        }

        #textito {
            position: absolute;
            text-align: left;
            top: 20px;
            margin-left: 20px;
            width: 440px;
            font-size: 35px;
            left: 0;
            color: #08fff0;
            font-weight: bold;
        }
        #textito2 {
            position: absolute;
            text-align: left;
            top: 160px;
            margin-left: 20px;
            width: 440px;
            font-size: 15px;
            left: 0;
            color: white;
        }
        img {
            width: 100%;
            border-radius: 10px;
        }
    </style>
    <section class="contenido wrapper">
        <div id="cuadro">
            <header>
                <div id="interior">
                    <img src="https://static.wixstatic.com/media/b2c0a7_4a8b425d8de773114d34686b8f5563fa.jpg/v1/fill/w_970,h_318,al_c,q_80,usm_0.66_1.00_0.01/b2c0a7_4a8b425d8de773114d34686b8f5563fa.jpg">
                    <span id="textito">
                        EN MI MÚSICA FAVORITA SIEMPRE ESTAMOS BUSCANDO TALENTOS
                    </span>
                    <span id="textito2">
                        <em>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus laboriosam debitis esse perspiciatis dolores
                        quia a error? Praesentium dolorum atque nisi est, reprehenderit a, assumenda cupiditate facilis voluptas qui, similique.
                        </em>
                    </span>
                    <div>

                    </div>
                </div>
            </header>
        </div>
    </section>
</asp:Content>
