<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroUsuario.aspx.cs" Inherits="FormCadastroWeb.CadastroUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="pnlCampoCadsatro" runat="server">

             <asp:Label ID="LblUserName" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br />

                <asp:Label ID="lblSenha" runat="server" Text="Senha"></asp:Label>
            <asp:TextBox ID="txtSenha" runat="server"></asp:TextBox><br />


            <asp:Label ID="LblNome" runat="server" Text="Nome"></asp:Label>
            <asp:TextBox ID="txtNome" runat="server"></asp:TextBox><br />

             <asp:Label ID="lblSobreanome" runat="server" Text="SobreNome"></asp:Label>
            <asp:TextBox ID="txtSobreNome" runat="server"></asp:TextBox><br />

            <asp:Label ID="lblNascimento" runat="server" Text="Data de Nascimento"></asp:Label>
             <asp:TextBox ID="txtNascimento" runat="server"></asp:TextBox> <br />

            <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
             <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />

            <asp:Button ID="btnLogin" runat="server" Text="Salvar" OnClick="btnLogin_Click" />

            </asp:Panel>
        </div>
        
        <asp:Panel ID="pnlResultado" runat="server">
            <a id="textoGrid">Simulação de tabela de Banco local</a>
            <asp:GridView ID="gridLista" runat="server"></asp:GridView>

        </asp:Panel>

        <asp:Panel ID="PnlNeg" runat="server">
            <div id="NegAviso"></div>
            <div id="sug">
                <div id="Neg"></div>
                 <div id="Neg2"></div>
            </div>
            
        </asp:Panel>

    </form>
</body>
</html>
<script>

    $(document).ready(function () {
       
    });

    $("#btnLogin").click(function(e) {

           $("#gridLista tr td").each(function() {
               if ($("#txtUsername").val() == $(this).text()) {
                 var email = $("#txtEmail").val();
                 var email2 =  email.split("@", 1); 
                   var data = $("#txtNascimento").val();
                   var dia = data.substr(0, 2);
                   var ano = data.substr(6, 9);
                   console.log(dia);
                   console.log(ano);
                   $("#NegAviso").html("Usuario ja cadastrado!");
                   $("#sug").show();

                   $("#Neg").html( "Opções de usuario não cadastrados <br>Primeiras Opçãos - " + $("#txtSobreNome").val() + $("#txtNome").val() + " - " + email2 + $("#txtNome").val() + " - " + $("#txtNome").val() + "v <br>");
                   $("#Neg2").html("Segundas Opções - " + $("#txtSobreNome").val() + $("#txtNome").val() + dia + " - " + email2 + $("#txtNome").val() + dia  + " - " + $("#txtNome").val() + "v" +  ano);
                 e.preventDefault();
             }
            });

    });

   


</script>
<style>

    #pnlCampoCadsatro{
        display: inline-grid;
        float: center !important;
        margin-left: 30%;
        width: 30%;
    }

    #pnlResultado{
    display: inline-grid;
    float: center !important;
    margin-left: 30%;
    width: 30%;
    margin-top: 44px;
    }

    #PnlNeg{

    display: inline-grid;
    float: center !important;
    margin-left: 30%;
    width: 30%;
    margin-top: 44px;
    }

    #NegAviso {
        color: red;
        font-size: 40px;
        text-align: center;
    }

    #sug{
        display:none;
        border: #356850 solid;
    border-radius: 10px;
    margin-top: 29px;
    }

    #gridLista{
        width:100%;
    }

    #textoGrid{
    text-align: center;
    margin-bottom: 10px;
    }
   
       
</style>