<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="CONTACTO.aspx.cs" Inherits="Mi_musica_preferida.Contacto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        #cuadro {
            background: rgba(0,0,0,0.7);
            padding: 2px 2px 2px 2px;
            margin: 0 13.5% 13.5%;
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
            width: 350px;
            font-size: 15px;
            left: 0;
            color: white;
        }

        #imgbanner {
            width: 100%;
            border-radius: 10px;
        }
        /*cuadro2*/
        #cuadro2{
            position: relative;
            background: rgba(0,0,0,0.9);
            padding: 2px 2px 2px 2px;
            margin-top:-15%;
            border-radius: 10px;
            box-shadow: 8px 8px 10px 0;
            float:right;
        }
        .fila{
                margin:10px 0;
            }
            .fila label:first-child{
                float:left;
                text-align: right;
                margin-right:10px;
            }
            .fila:last-child{
                padding-left:260px;
            }
            #enviar{
                height: 70px;
                width: 70px;
            }
            h1, #parrafocuadro2, label, textarea{
                color:white;
                margin:2px 10px 2px 10px;
            }
            input{
                margin:2px 10px 2px 10px;
            }
  
    </style>
    <section class="contenido wrapper">
        <div id="cuadro">
            <header>
                <div id="interior">
                    <img id="imgbanner" src="https://static.wixstatic.com/media/b2c0a7_4a8b425d8de773114d34686b8f5563fa.jpg/v1/fill/w_970,h_318,al_c,q_80,usm_0.66_1.00_0.01/b2c0a7_4a8b425d8de773114d34686b8f5563fa.jpg"/>
                    <span id="textito">
                        EN MI MÚSICA FAVORITA SIEMPRE ESTAMOS BUSCANDO TALENTOS
                    </span>
                    <span id="textito2">
                        <em>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus laboriosam debitis esse perspiciatis dolores
                        quia a error? Praesentium dolorum atque nisi est, reprehenderit a, assumenda cupiditate facilis voluptas qui, similique.
                        </em>
                    </span>
                </div>
            </header>
            <!--cuadro-->
            <div id="cuadro2">
                <h1 style="color: Green">Contactanos:</h1>
                <p id="parrafocuadro2">Complete este formulario para contactarnos:</p>
                <form method="post">
                    <div class="fila">
                        <label for="nombre1">Nombre</label><br/>
                        <input style="width: 340px" id="nombre1" placeholder="" type="text" name="nombre" />
                    </div>
                    <div class="fila">
                        <label for="email">Email</label><br/>
                        <input style="width: 340px" id="email" placeholder="" type="email" />
                    </div>
                    <div class="fila">
                        <label for="apellido1">Asunto</label><br/>
                        <input style="width: 340px" id="apellido1" placeholder="" type="text" name="apellido" />
                    </div>
                    <div class="fila">
                        <label for="mensaje">Mensaje</label><br/>
                        <textarea rows="5" style="width: 340px" id="mensaje" name="mensaje"></textarea>
                    </div>
                    <div class="fila">
                        <a href="#">
                            <img id="enviar" src="https://static.wixstatic.com/media/666a32_6fb4a2c7a8c24b2daa2d1b40b74e21d4~mv2.png/v1/fill/w_128,h_128,al_c/666a32_6fb4a2c7a8c24b2daa2d1b40b74e21d4~mv2.png"/>
                        </a>
                    </div>
                </form>
            </div>
            <div style="clear:both;">bnsfgng</div>
        </div>
    </section>
</asp:Content>
