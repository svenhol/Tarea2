<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Tarea2BD.Inicio" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script language="javascript" type="text/javascript">
// <![CDATA[

// ]]>
    </script>
    <style type="text/css">
        #ButtonReg
        {
            width: 160px;
        }
        #ButtonIni
        {
            width: 160px;
        }
        .style3
        {
            width: 162px;
            height: 34px;
        }
        .style4
        {
            width: 140px;
            height: 34px;
        }
        .style5
        {
            height: 34px;
        }
        .style6
        {
            width: 162px;
            height: 26px;
        }
        .style7
        {
            width: 140px;
            height: 26px;
        }
        .style8
        {
            height: 26px;
        }
        .style9
        {
            width: 162px;
            height: 27px;
        }
        .style10
        {
            width: 140px;
            height: 27px;
        }
        .style11
        {
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width: 101%; height: 117px;">
        <tr>
            <td class="style6">
                </td>
            <td class="style7">
                FORO MAGIC USM</td>
            <td class="style8">
                </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Button ID="ButtonIni" runat="server" onclick="ButtonIni_Click" 
                    Text="Iniciar Sesión" Width="160px" />
            </td>
            <td class="style4">
                </td>
            <td class="style5">
                <asp:Button ID="ButtonReg" runat="server" onclick="ButtonReg_Click" 
                    Text="Registrarse" Width="160px" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                </td>
            <td class="style10">
                </td>
            <td class="style11">
                </td>
        </tr>
        <tr>
            <td class="style9">
                Categorias</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" 
        Width="192px">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="nombre" 
                DataNavigateUrlFormatString="Temas.aspx?nombre={0}" DataTextField="nombre" 
                HeaderText="Nombre" />
            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" 
                Visible="False" />
            <asp:BoundField DataField="descripcion" HeaderText="descripcion" 
                SortExpression="descripcion" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="Gray" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Tarea2BDConnectionString %>" 
        SelectCommand="SELECT [nombre], [descripcion] FROM [categoria] WHERE ([publico] = @publico)">
        <SelectParameters>
            <asp:Parameter DefaultValue="True" Name="publico" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
