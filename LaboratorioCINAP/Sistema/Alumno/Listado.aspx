<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Listado.aspx.cs" Inherits="Sistema_Alumno_Listado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">

    <h1>Listado de Alumnos</h1>
    <hr />
    <asp:SqlDataSource ID="sqlDS_Alumnos" runat="server"
        ConnectionString='<%$ ConnectionStrings:t020009ConnectionString %>'
        SelectCommand="SELECT * FROM [Alumno]" DeleteCommand="DELETE FROM [Alumno] WHERE [ID_Alumno] = @ID_Alumno" InsertCommand="INSERT INTO [Alumno] ([nombre], [apellido_Paterno], [apellido_Materno], [numero_Control], [carrera], [email]) VALUES (@nombre, @apellido_Paterno, @apellido_Materno, @numero_Control, @carrera, @email)" UpdateCommand="UPDATE [Alumno] SET [nombre] = @nombre, [apellido_Paterno] = @apellido_Paterno, [apellido_Materno] = @apellido_Materno, [numero_Control] = @numero_Control, [carrera] = @carrera, [email] = @email WHERE [ID_Alumno] = @ID_Alumno">
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

    <a href="Nuevo.aspx">Nuevo Alumno</a>

    <asp:GridView ID="gvAlumnos" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_Alumno" DataSourceID="sqlDS_Alumnos" ShowHeaderWhenEmpty="true" Width="100%" AllowPaging="True" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="ID_Alumno" DataNavigateUrlFormatString="Editar.aspx?ID={0}" Text="Editar"></asp:HyperLinkField>
        </Columns>
        <EmptyDataTemplate>
            No hay datos que desplegar.
        </EmptyDataTemplate>
        <Columns>
            <asp:BoundField DataField="ID_Alumno" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="ID_Alumno"></asp:BoundField>
            <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre"></asp:BoundField>
            <asp:BoundField DataField="apellido_Paterno" HeaderText="Paterno" SortExpression="apellido_Paterno"></asp:BoundField>
            <asp:BoundField DataField="apellido_Materno" HeaderText="Materno" SortExpression="apellido_Materno"></asp:BoundField>
            <asp:BoundField DataField="numero_Control" HeaderText="# Control" SortExpression="numero_Control"></asp:BoundField>
            <asp:BoundField DataField="carrera" HeaderText="Carrera" SortExpression="carrera"></asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="eMail" SortExpression="email"></asp:BoundField>
            <asp:TemplateField>
	            <ItemTemplate>
		            <asp:ImageButton BackColor="Transparent" BorderWidth="0" Width="16px" ImageUrl="~/Images/delete.png" ID="deleteButton" runat="server" CommandName="Delete" Text="Delete"
                        OnClientClick="return confirm('¿Estas seguro que quieres borrar el dato?');" />
	            </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

</asp:Content>




