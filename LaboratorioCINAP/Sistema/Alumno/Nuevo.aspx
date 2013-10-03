<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Nuevo.aspx.cs" Inherits="Sistema_Alumno_Nuevo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>Agregar Nuevo Alumno</h1>
    <hr />
    <asp:SqlDataSource ID="sqlDS_Alumnos" runat="server" ConnectionString='<%$ ConnectionStrings:t020009ConnectionString %>' DeleteCommand="DELETE FROM [Alumno] WHERE [ID_Alumno] = @ID_Alumno" InsertCommand="INSERT INTO [Alumno] ([nombre], [apellido_Paterno], [apellido_Materno], [numero_Control], [carrera], [email]) VALUES (@nombre, @apellido_Paterno, @apellido_Materno, @numero_Control, @carrera, @email)" SelectCommand="SELECT * FROM [Alumno]" UpdateCommand="UPDATE [Alumno] SET [nombre] = @nombre, [apellido_Paterno] = @apellido_Paterno, [apellido_Materno] = @apellido_Materno, [numero_Control] = @numero_Control, [carrera] = @carrera, [email] = @email WHERE [ID_Alumno] = @ID_Alumno">
        <InsertParameters>
            <asp:Parameter Name="nombre" Type="String"></asp:Parameter>
            <asp:Parameter Name="apellido_Paterno" Type="String"></asp:Parameter>
            <asp:Parameter Name="apellido_Materno" Type="String"></asp:Parameter>
            <asp:Parameter Name="numero_Control" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="carrera" Type="String"></asp:Parameter>
            <asp:Parameter Name="email" Type="String"></asp:Parameter>
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="dvAlumno" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="ID_Alumno" DataSourceID="sqlDS_Alumnos" DefaultMode="Insert" OnItemInserted="dvAlumno_ItemInserted" OnItemInserting="dvAlumno_ItemInserting">
        <Fields>
            <asp:BoundField DataField="ID_Alumno" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="ID_Alumno"></asp:BoundField>
            <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre"></asp:BoundField>
            <asp:BoundField DataField="apellido_Paterno" HeaderText="Paterno" SortExpression="apellido_Paterno"></asp:BoundField>
            <asp:BoundField DataField="apellido_Materno" HeaderText="Materno" SortExpression="apellido_Materno"></asp:BoundField>
            <asp:BoundField DataField="numero_Control" HeaderText="#Control" SortExpression="numero_Control"></asp:BoundField>
            <asp:BoundField DataField="carrera" HeaderText="Carrera" SortExpression="carrera"></asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="eMail" SortExpression="email"></asp:BoundField>
            <asp:CommandField CancelText="Cancelar" InsertText="Agregar" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
</asp:Content>


