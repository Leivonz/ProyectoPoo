<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProyectoVentas.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/signin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="body bg-white">
        <main class="form-signin">
            <!-- Usuario input -->
            <div class="form-outline mb-4">
                <%--<input type="email" id="form2Example1" class="form-control" />--%>
                <label class="form-label" for="form2Example1">Usuario</label>
                <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control"></asp:TextBox>

            </div>

            <!-- Contraseña input -->
            <div class="form-outline mb-4">
                <%--<input type="password" id="form2Example2" class="form-control" />--%>
                <label class="form-label" for="form2Example2">Contraseña</label>
                <asp:TextBox ID="txtContrasena" runat="server" CssClass="form-control"></asp:TextBox>

            </div>

            <!-- 2 column grid layout for inline styling -->

            <!-- Submit -->
            <%--<button type="button" class="btn btn-primary btn-block mb-4">Sign in</button>--%>
            <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary btn-block mb-4" Text="Iniciar Sesión" OnClick="btnLogin_Click" />

            <!-- Mensaje -->
            <div class="text-center">
                <asp:Label ID="lbTexto" runat="server"></asp:Label>
            </div>
        </main>
    </div>
</asp:Content>

