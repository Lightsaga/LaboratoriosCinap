<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Editar.aspx.cs" Inherits="Sistema_Alumno_Editar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>Editar Profesor</h1>
    <hr />
    <asp:SqlDataSource ID="sqlDS_Profesores" runat="server" ConnectionString='<%$ ConnectionStrings:t020009ConnectionString %>' SelectCommand="SELECT * FROM [Profesor] WHERE ([ID_Profesor] = @ID_Profesor)" DeleteCommand="DELETE FROM [Profesor] WHERE [ID_Profesor] = @original_ID_Profesor AND [nombres] = @original_nombres AND [apellido_paterno] = @original_apellido_paterno AND [apellido_materno] = @original_apellido_materno AND [numEmpleado] = @original_numEmpleado AND (([ID_Materia] = @original_ID_Materia) OR ([ID_Materia] IS NULL AND @original_ID_Materia IS NULL)) AND (([telefono] = @original_telefono) OR ([telefono] IS NULL AND @original_telefono IS NULL)) AND [email] = @original_email" InsertCommand="INSERT INTO [Profesor] ([nombres], [apellido_paterno], [apellido_materno], [numEmpleado], [ID_Materia], [telefono], [email]) VALUES (@nombres, @apellido_paterno, @apellido_materno, @numEmpleado, @ID_Materia, @telefono, @email)" UpdateCommand="UPDATE [Profesor] SET [nombres] = @nombres, [apellido_paterno] = @apellido_paterno, [apellido_materno] = @apellido_materno, [numEmpleado] = @numEmpleado, [ID_Materia] = @ID_Materia, [telefono] = @telefono, [email] = @email WHERE [ID_Profesor] = @original_ID_Profesor AND [nombres] = @original_nombres AND [apellido_paterno] = @original_apellido_paterno AND [apellido_materno] = @original_apellido_materno AND [numEmpleado] = @original_numEmpleado AND (([ID_Materia] = @original_ID_Materia) OR ([ID_Materia] IS NULL AND @original_ID_Materia IS NULL)) AND (([telefono] = @original_telefono) OR ([telefono] IS NULL AND @original_telefono IS NULL)) AND [email] = @original_email" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
        <DeleteParameters>
            <asp:Parameter Name="original_ID_Profesor" Type="Int32"></asp:Parameter>
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
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="ID" Name="ID_Profesor" Type="Int32" ></asp:QueryStringParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombres" Type="String"></asp:Parameter>
            <asp:Parameter Name="apellido_paterno" Type="String"></asp:Parameter>
            <asp:Parameter Name="apellido_materno" Type="String"></asp:Parameter>
            <asp:Parameter Name="numEmpleado" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="ID_Materia" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="telefono" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="email" Type="String"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:DetailsView ID="dvAlumno" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="ID_Profesor" DataSourceID="sqlDS_Profesores" DefaultMode="Edit" OnItemUpdated="dvProfesor_ItemUpdated">
        <Fields>
            <asp:BoundField DataField="ID_Profesor" HeaderText="ID_Profesor" ReadOnly="True" InsertVisible="False" SortExpression="ID_Profesor"></asp:BoundField>
            <asp:BoundField DataField="nombres" HeaderText="nombres" SortExpression="nombres"></asp:BoundField>
            <asp:BoundField DataField="apellido_paterno" HeaderText="apellido_paterno" SortExpression="apellido_paterno"></asp:BoundField>
            <asp:BoundField DataField="apellido_materno" HeaderText="apellido_materno" SortExpression="apellido_materno"></asp:BoundField>
            <asp:BoundField DataField="numEmpleado" HeaderText="numEmpleado" SortExpression="numEmpleado"></asp:BoundField>
            <asp:BoundField DataField="ID_Materia" HeaderText="ID_Materia" SortExpression="ID_Materia"></asp:BoundField>
            <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono"></asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>

            <asp:CommandField ShowEditButton="True"></asp:CommandField>
        </Fields>
    </asp:DetailsView>
</asp:Content>

