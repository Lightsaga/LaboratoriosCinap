<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Inicio.aspx.cs" Inherits="Sistema_Login_Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 300px;
        }
        .auto-style2 {
            height: 49px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings: t020009ConnectionString %>' SelectCommand="SELECT [Email], [Contraseña] FROM [Usuario] WHERE (([Email] = @Email) AND ([Contraseña] = @Contraseña))">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="Email" DefaultValue="" Name="Email" Type="String"></asp:QueryStringParameter>
            <asp:QueryStringParameter QueryStringField="Contrase&#241;a" Name="Contrase&#241;a" Type="String"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    
    
    

    <table align="center" class="auto-style1">
        <tr>
            <td>Usuario</td>
            <td>
                <asp:TextBox ID="txtNombres" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Clave</td>
            <td>
                <asp:TextBox ID="txtContraseñas" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2">
                <asp:Button ID="btnEnviar" runat="server" Height="26px" OnClick="btnEnviar_Click" Text="Enviar" Width="106px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lblMensaje" runat="server" Text="Llene los campos"></asp:Label>
            </td>
        </tr>
    </table>
    
    
    

</asp:Content>

