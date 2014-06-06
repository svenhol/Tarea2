<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="Tarea2BD.Registrarse" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 23px;
        }
        .style3
        {
            height: 23px;
            width: 247px;
        }
        .style6
        {
            width: 247px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="style6">
                Ingrese Datos para Registrar una Cuenta</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Nombre:&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style1">
                <asp:TextBox ID="TextBoxNombre" runat="server"></asp:TextBox>
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style6">
                Constraseña:&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                <asp:TextBox ID="TextBoxCtr" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td class="style6">
                Repetir Contraseña:
            </td>
            <td>
                <asp:TextBox ID="TextBoxCtrRe" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                Fecha de Nacimiento:&nbsp;
            </td>
            <td>
                <asp:TextBox ID="TextBoxNac" runat="server" style="margin-left: 0px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                Sexo:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                <asp:TextBox ID="TextBoxSexo" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td class="style6">
                Avatar URL:</td>
            <td>
                <asp:TextBox ID="TextBoxAvatar" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
            </td>
            <td class="style1">
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Button ID="ButtonFinalizar" runat="server" Text="Finalizar" 
                    Width="165px" onclick="ButtonFinalizar_Click" />
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Volver" 
                    Visible="False" Width="165px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
