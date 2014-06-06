<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Foro.aspx.cs" Inherits="Tarea2BD.Foro1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        FORO MAGIC USM</div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="549px">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="nombre" 
                DataNavigateUrlFormatString="Temas.aspx?nombre={0}" DataTextField="nombre" 
                HeaderText="Nombre" NavigateUrl="~/Temas.aspx" />
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
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Salir" 
        Width="110px" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Tarea2BDConnectionString %>" 
        SelectCommand="SELECT [nombre], [descripcion] FROM [categoria]">
    </asp:SqlDataSource>
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Mi Perfil" Width="109px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
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
