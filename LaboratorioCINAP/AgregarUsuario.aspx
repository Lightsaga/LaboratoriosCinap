<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AgregarUsuario.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">

    <asp:SqlDataSource ID="dsUsuarios" runat="server" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:LaboratorioCINAP %>' DeleteCommand="DELETE FROM [Usuario] WHERE [ID_Usuario] = @original_ID_Usuario AND [Email] = @original_Email AND [Contraseña] = @original_Contraseña AND [Estado] = @original_Estado AND [Jerarquia] = @original_Jerarquia" InsertCommand="INSERT INTO [Usuario] ([ID_Usuario], [Email], [Contraseña], [Estado], [Jerarquia]) VALUES (@ID_Usuario, @Email, @Contraseña, @Estado, @Jerarquia)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Usuario]" UpdateCommand="UPDATE [Usuario] SET [Email] = @Email, [Contraseña] = @Contraseña, [Estado] = @Estado, [Jerarquia] = @Jerarquia WHERE [ID_Usuario] = @original_ID_Usuario AND [Email] = @original_Email AND [Contraseña] = @original_Contraseña AND [Estado] = @original_Estado AND [Jerarquia] = @original_Jerarquia">
        <DeleteParameters>
            <asp:Parameter Name="original_ID_Usuario" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Contrase&#241;a" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Estado" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="original_Jerarquia" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID_Usuario" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="Contrase&#241;a" Type="String"></asp:Parameter>
            <asp:Parameter Name="Estado" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="Jerarquia" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="Contrase&#241;a" Type="String"></asp:Parameter>
            <asp:Parameter Name="Estado" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="Jerarquia" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_ID_Usuario" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Contrase&#241;a" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Estado" Type="Boolean"></asp:Parameter>
            <asp:Parameter Name="original_Jerarquia" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataSourceID="dsUsuarios" DataKeyNames="ID_Usuario">
        <Fields>
            <asp:BoundField DataField="ID_Usuario" HeaderText="ID_Usuario" ReadOnly="True" SortExpression="ID_Usuario"></asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
            <asp:BoundField DataField="Contrase&#241;a" HeaderText="Contrase&#241;a" SortExpression="Contrase&#241;a"></asp:BoundField>
            <asp:CheckBoxField DataField="Estado" HeaderText="Estado" SortExpression="Estado"></asp:CheckBoxField>
            <asp:BoundField DataField="Jerarquia" HeaderText="Jerarquia" SortExpression="Jerarquia"></asp:BoundField>
            <asp:CommandField ShowInsertButton="True"></asp:CommandField>
        </Fields>
    </asp:DetailsView>



</asp:Content>

