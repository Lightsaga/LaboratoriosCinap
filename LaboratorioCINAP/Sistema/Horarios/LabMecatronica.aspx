<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="LabMecatronica.aspx.cs" Inherits="Sistema_Horarios_Mecatronica" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <asp:TextBox ID="TextBox1" runat="server" BackColor="Aqua" Font-Size="XX-Large" Height="37px" OnTextChanged="TextBox1_TextChanged" ReadOnly="True" Width="645px">               Laboratorio de Mecatronica

</asp:TextBox>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">

    <table class="auto-style1">
        <tr>
            <td class="auto-style1">
                <asp:Menu ID="Menu1" runat="server" Font-Size="Larger">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/Sistema/Horarios/LabFisica.aspx" Text="Fisica" Value="Oooooh"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Sistema/Horarios/LabMecatronica.aspx" Text="Mecatronica" Value="Mecatronica"></asp:MenuItem>
                    </Items>
                </asp:Menu>
            </td>
            <td class="auto-style1">
                
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3">Horario</td>
                        <td class="auto-style3">LUNES</td>
                        <td class="auto-style3">MARTES</td>
                        <td class="auto-style3">MIERCOLES</td>
                        <td class="auto-style3">JUEVES</td>
                        <td class="auto-style3">VIERNES</td>
                    </tr>
                    <tr>
                        <td>7-9AM</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>9-11AM</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>11-1PM</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>3-5PM</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>5-7PM</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>7-9PM</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                
            </td>
        </tr>
        <tr>
            <td>Seleccione un laboratorio</td>
            <td>
                <asp:Button ID="btnHorarios" runat="server" OnClick="btnHorarios_Click" Text="Modificar" />
            </td>
        </tr>
    </table>
</asp:Content>

