<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Listado.aspx.cs" Inherits="Sistema_Alumno_Listado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">

    <h1>Listado de Profesores</h1>
    <hr />
    <asp:ObjectDataSource ID="ObjectDataSourceBusqueda" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByNumEmpleado" TypeName="   Dataset2TableAdapters.ProfesorTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_ID_Profesor" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="apellido_paterno" Type="String" />
            <asp:Parameter Name="apellido_materno" Type="String" />
            <asp:Parameter Name="numEmpleado" Type="Int32" />
            <asp:Parameter Name="ID_Materia" Type="Int32" />
            <asp:Parameter Name="telefono" Type="Int32" />
            <asp:Parameter Name="email" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="txtBuscar" Name="NumEmpleado" PropertyName="Text" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombres" Type="String" />
            <asp:Parameter Name="apellido_paterno" Type="String" />
            <asp:Parameter Name="apellido_materno" Type="String" />
            <asp:Parameter Name="numEmpleado" Type="Int32" />
            <asp:Parameter Name="ID_Materia" Type="Int32" />
            <asp:Parameter Name="telefono" Type="Int32" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="Original_ID_Profesor" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
    <asp:SqlDataSource ID="sqlDS_Profesores" runat="server"
        ConnectionString='<%$ ConnectionStrings:t020009ConnectionString %>'
        SelectCommand="SELECT * FROM [Profesor]" DeleteCommand="DELETE FROM [Profesor] WHERE [ID_Profesor] = @original_ID_Profesor AND [nombres] = @original_nombres AND [apellido_paterno] = @original_apellido_paterno AND [apellido_materno] = @original_apellido_materno AND [numEmpleado] = @original_numEmpleado AND (([ID_Materia] = @original_ID_Materia) OR ([ID_Materia] IS NULL AND @original_ID_Materia IS NULL)) AND (([telefono] = @original_telefono) OR ([telefono] IS NULL AND @original_telefono IS NULL)) AND [email] = @original_email" InsertCommand="INSERT INTO [Profesor] ([nombres], [apellido_paterno], [apellido_materno], [numEmpleado], [ID_Materia], [telefono], [email]) VALUES (@nombres, @apellido_paterno, @apellido_materno, @numEmpleado, @ID_Materia, @telefono, @email)" UpdateCommand="UPDATE [Profesor] SET [nombres] = @nombres, [apellido_paterno] = @apellido_paterno, [apellido_materno] = @apellido_materno, [numEmpleado] = @numEmpleado, [ID_Materia] = @ID_Materia, [telefono] = @telefono, [email] = @email WHERE [ID_Profesor] = @original_ID_Profesor AND [nombres] = @original_nombres AND [apellido_paterno] = @original_apellido_paterno AND [apellido_materno] = @original_apellido_materno AND [numEmpleado] = @original_numEmpleado AND (([ID_Materia] = @original_ID_Materia) OR ([ID_Materia] IS NULL AND @original_ID_Materia IS NULL)) AND (([telefono] = @original_telefono) OR ([telefono] IS NULL AND @original_telefono IS NULL)) AND [email] = @original_email" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
        <DeleteParameters>
            <asp:Parameter Name="original_ID_Profesor" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_nombres" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_apellido_paterno" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_apellido_materno" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_numEmpleado" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_ID_Materia" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_telefono" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_email" Type="String"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nombres" Type="String"></asp:Parameter>
            <asp:Parameter Name="apellido_paterno" Type="String"></asp:Parameter>
            <asp:Parameter Name="apellido_materno" Type="String"></asp:Parameter>
            <asp:Parameter Name="numEmpleado" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="ID_Materia" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="telefono" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="email" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombres" Type="String"></asp:Parameter>
            <asp:Parameter Name="apellido_paterno" Type="String"></asp:Parameter>
            <asp:Parameter Name="apellido_materno" Type="String"></asp:Parameter>
            <asp:Parameter Name="numEmpleado" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="ID_Materia" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="telefono" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="email" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_ID_Profesor" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_nombres" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_apellido_paterno" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_apellido_materno" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_numEmpleado" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_ID_Materia" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_telefono" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_email" Type="String"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>


    <a href="Nuevo.aspx">Nuevo Profesor</a>

    <asp:TextBox ID="txtBuscar" runat="server"></asp:TextBox>
    <asp:Button ID="btnBuscar" runat="server" Font-Size="Medium" Height="32px" OnClick="btnBuscar_Click" Text="Buscar" Width="73px" />

    <asp:Label ID="Label1" runat="server" Text="Buscar por # de Control"></asp:Label>

    <asp:GridView ID="gvProfesores" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_Profesor" DataSourceID="sqlDS_Profesores" ShowHeaderWhenEmpty="true" Width="100%" AllowPaging="True" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="ID_Profesor" DataNavigateUrlFormatString="Editar.aspx?ID={0}" Text="Editar"></asp:HyperLinkField>
        </Columns>
        <EmptyDataTemplate>
            No hay datos que desplegar.
        </EmptyDataTemplate>
        <Columns>
            <asp:BoundField DataField="ID_Profesor" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="ID_Profesor"></asp:BoundField>
            <asp:BoundField DataField="nombres" HeaderText="Nombre" SortExpression="nombres"></asp:BoundField>
            <asp:BoundField DataField="apellido_paterno" HeaderText="Paterno" SortExpression="apellido_Paterno"></asp:BoundField>
            <asp:BoundField DataField="apellido_materno" HeaderText="Materno" SortExpression="apellido_Materno"></asp:BoundField>
            <asp:BoundField DataField="numEmpleado" HeaderText="# Control" SortExpression="numEmpleado"></asp:BoundField>
            <asp:BoundField DataField="ID_Materia" HeaderText="Carrera" SortExpression="ID_Materia"></asp:BoundField>
            <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono"></asp:BoundField>
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




