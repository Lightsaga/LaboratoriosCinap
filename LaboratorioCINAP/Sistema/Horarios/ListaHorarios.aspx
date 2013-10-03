<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ListaHorarios.aspx.cs" Inherits="Sistema_Horarios_ListaHorarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">




    <table class="auto-style1">
        <tr>
            <td>
                <asp:Menu ID="Menu1" runat="server" Font-Size="Larger">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/Sistema/Horarios/LabFisica.aspx" Text="Fisica" Value="Oooooh"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Sistema/Horarios/LabMecatronica.aspx" Text="Mecatronica" Value="Mecatronica"></asp:MenuItem>
                    </Items>
                </asp:Menu>
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Seleccione un laboratorio para ver sus horarios"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>




    
    


</asp:Content>

