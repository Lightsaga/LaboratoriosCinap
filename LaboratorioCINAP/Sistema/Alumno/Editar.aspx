<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Editar.aspx.cs" Inherits="Sistema_Alumno_Editar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>Editar Alumno</h1>
    <hr />
    <asp:SqlDataSource ID="sqlDS_Alumnos" runat="server" ConnectionString='<%$ ConnectionStrings:t020009ConnectionString %>' SelectCommand="SELECT * FROM [Alumno] WHERE ([ID_Alumno] = @ID_Alumno)" DeleteCommand="DELETE FROM [Alumno] WHERE [ID_Alumno] = @ID_Alumno" InsertCommand="INSERT INTO [Alumno] ([nombre], [apellido_Paterno], [apellido_Materno], [numero_Control], [carrera], [email]) VALUES (@nombre, @apellido_Paterno, @apellido_Materno, @numero_Control, @carrera, @email)" UpdateCommand="UPDATE [Alumno] SET [nombre] = @nombre, [apellido_Paterno] = @apellido_Paterno, [apellido_Materno] = @apellido_Materno, [numero_Control] = @numero_Control, [carrera] = @carrera, [email] = @email WHERE [ID_Alumno] = @ID_Alumno">
        <DeleteParameters>
            <asp:Parameter Name="ID_Alumno" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nombre" Type="String"></asp:Parameter>
            <asp:Parameter Name="apellido_Paterno" Type="String"></asp:Parameter>
            <asp:Parameter Name="apellido_Materno" Type="String"></asp:Parameter>
            <asp:Parameter Name="numero_Control" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="carrera" Type="String"></asp:Parameter>
            <asp:Parameter Name="email" Type="String"></asp:Parameter>
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="ID" Name="ID_Alumno" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombre" Type="String"></asp:Parameter>
            <asp:Parameter Name="apellido_Paterno" Type="String"></asp:Parameter>
            <asp:Parameter Name="apellido_Materno" Type="String"></asp:Parameter>
            <asp:Parameter Name="numero_Control" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="carrera" Type="String"></asp:Parameter>
            <asp:Parameter Name="email" Type="String"></asp:Parameter>
            <asp:Parameter Name="ID_Alumno" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:DetailsView ID="dvAlumno" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="ID_Alumno" DataSourceID="sqlDS_Alumnos" DefaultMode="Edit" OnItemUpdated="dvAlumno_ItemUpdated">
        <Fields>
            <asp:BoundField DataField="ID_Alumno" HeaderText="ID_Alumno" ReadOnly="True" InsertVisible="False" SortExpression="ID_Alumno"></asp:BoundField>
            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre"></asp:BoundField>
            <asp:BoundField DataField="apellido_Paterno" HeaderText="apellido_Paterno" SortExpression="apellido_Paterno"></asp:BoundField>
            <asp:BoundField DataField="apellido_Materno" HeaderText="apellido_Materno" SortExpression="apellido_Materno"></asp:BoundField>
            <asp:BoundField DataField="numero_Control" HeaderText="numero_Control" SortExpression="numero_Control"></asp:BoundField>
            <asp:BoundField DataField="carrera" HeaderText="carrera" SortExpression="carrera"></asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
            <asp:CommandField ShowEditButton="True"></asp:CommandField>
        </Fields>
    </asp:DetailsView>
</asp:Content>

