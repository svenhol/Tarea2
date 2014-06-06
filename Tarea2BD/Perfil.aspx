<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="Tarea2BD.Perfil" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 12px;
        }
        .style2
        {
            width: 173px;
        }
        .style3
        {
            height: 12px;
            width: 173px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="style2">
                Nombre:
            </td>
            <td>
                <asp:Label ID="LabelNombre" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Edad:
            </td>
            <td class="style1">
                <asp:Label ID="LabelEdad" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style2">
                Sexo:</td>
            <td>
                <asp:Label ID="LabelSexo" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Nro de Comentarios:</td>
            <td>
                <asp:Label ID="LabelComentarios" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Fecha de Registro:</td>
            <td>
                <asp:Label ID="LabelFecha" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Tipo de Usuario:</td>
            <td>
                <asp:Label ID="LabelTipo" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
