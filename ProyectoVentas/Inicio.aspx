<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="ProyectoVentas.Inicio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

        <p>
            <br />
        </p>
        <br />
        <table id="tb_Datos" class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="lb_idCliente" runat="server" Text="ID CLIENTE"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lb_Nombre" runat="server" Text="NOMBRE"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lb_Contrasena" runat="server" Text="CONTRASEÑA"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lb_Correo" runat="server" Text="CORREO"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lb_Numero" runat="server" Text="NÚMERO"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lb_Direccion" runat="server" Text="DIRECCIÓN"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtIdCliente" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtContrasena" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtNumero" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <asp:DropDownList ID="ddUsuarios" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        <p>

            <asp:Button ID="btnMostrarDatos" runat="server" OnClick="btnMostrarDatos_Click" Text="Mostrar Datos" Style="width: 124px" CssClass="btn btn-warning" />
            <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" OnClientClick="return confirm ('¿Está seguro que desea eliminar?');" CssClass="btn btn-warning" />
            <asp:Button runat="server" Text="Guardar" ID="btnGuardar" OnClick="btnGuardar_Click" CssClass="btn btn-warning"></asp:Button>
            <asp:Button ID="btnActualizar" runat="server" OnClick="btnActualizar_Click" Text="Actualizar" CssClass="btn btn-warning" />
        <asp:Label ID="Mensaje" runat="server" CssClass="text-bg-dark"></asp:Label>
        </p>
        <asp:GridView ID="dgvClientes" runat="server" OnSelectedIndexChanged="dgvClientes_SelectedIndexChanged" CssClass="table table-bordered table-condensed table-responsive table-hover ">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>
        <p>
        </p>

    </div>
</asp:Content>

