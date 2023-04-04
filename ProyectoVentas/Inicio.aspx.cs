using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


namespace ProyectoVentas
{
    public partial class Inicio : System.Web.UI.Page
    {
        public string connectionString;
        public string SQL;
        protected void Page_Load(object sender, EventArgs e)
        {
            connectionString = ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString;
            mostarDatos();
            if (!IsPostBack)
            {
                llenaDrop();
            }
            
        }

        protected void btnMostrarDatos_Click(object sender, EventArgs e)
        {
            mostarDatos();
        }

        void mostarDatos()
        {
            try
            {
                SQL = "SELECT [id_cliente] ,[nombre] ,[contrasena] ,[correo], [numero] ,[direccion] from [cliente]";
                SqlDataAdapter adapter = new SqlDataAdapter(SQL, connectionString);
                DataTable table = new DataTable();
                adapter.Fill(table);

                dgvClientes.DataSource = table;
                dgvClientes.DataBind();
            }
            catch (Exception ex)
            {
                Mensaje.Text = ex + SQL;
            }
        }

        protected void dgvClientes_SelectedIndexChanged(object sender, EventArgs e)
        {
            Seleccionar();
        }

        void Seleccionar()
        {
            txtIdCliente.Text = dgvClientes.SelectedRow.Cells[1].Text;
            txtNombre.Text = Server.HtmlDecode(dgvClientes.SelectedRow.Cells[2].Text);
            txtContrasena.Text = Server.HtmlDecode(dgvClientes.SelectedRow.Cells[3].Text);
            txtCorreo.Text = Server.HtmlDecode(dgvClientes.SelectedRow.Cells[4].Text);
            txtNumero.Text = Server.HtmlDecode(dgvClientes.SelectedRow.Cells[5].Text);
            txtDireccion.Text = Server.HtmlDecode(dgvClientes.SelectedRow.Cells[6].Text);
        }

        void Guardar()
        {
            SqlConnection connection = new SqlConnection(connectionString);

            SQL = "INSERT INTO [cliente] ([id_cliente] ,[nombre] ,[contrasena] ,[correo], [numero] ,[direccion]) values (@IdCliente, @Nombre, @Contrasena, @Correo, @Numero, @Direccion)";
            SqlCommand command = new SqlCommand(SQL, connection);

            command.Parameters.Add("@IdCliente", SqlDbType.VarChar).Value = txtIdCliente.Text;
            command.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = txtNombre.Text;
            command.Parameters.Add("@Contrasena", SqlDbType.VarChar).Value = txtContrasena.Text;
            command.Parameters.Add("@Correo", SqlDbType.VarChar).Value = txtCorreo.Text;
            command.Parameters.Add("@Numero", SqlDbType.VarChar).Value = txtNumero.Text;
            command.Parameters.Add("@Direccion", SqlDbType.VarChar).Value = txtDireccion.Text;

            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Guardar();
            mostarDatos();
            Limpiar();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            Eliminar();
            mostarDatos();
            Limpiar();
        }

        void Eliminar()
        {

            try
            {
                if (txtIdCliente.Text.Length > 0)
                {
                    SQL = "delete from cliente where id_cliente =@IdCliente";

                    SqlConnection connection = new SqlConnection(connectionString);
                    connection.Open();

                    SqlCommand command = new SqlCommand(SQL, connection);

                    command.Parameters.AddWithValue("@IdCliente", txtIdCliente.Text);

                    int affectedRows = command.ExecuteNonQuery();

                    if (affectedRows > 0)
                    {
                        Mensaje.Text = "Registro eliminado correctamente";
                    }
                    else
                    {
                        Mensaje.Text = "No se ha podido eliminar el registro";
                    }

                    command.Dispose();
                    connection.Close();
                    mostarDatos();
                }
                else
                {
                    Mensaje.Text = "Debe seleccionar un ID";
                }
            }
            catch (Exception ex)
            {
                Mensaje.Text = SQL + ex;
            }

        }
        void Actualizar()
        {
            SQL = "update cliente set id_cliente = @IdCliente, nombre = @Nombre, contrasena = @Contrasena, correo = @Correo, numero = @Numero, direccion = @Direccion where id_cliente = @IdCliente ";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(SQL, connection);

            command.Parameters.AddWithValue("@IdCliente", txtIdCliente.Text);
            command.Parameters.Add("@Nombre", SqlDbType.VarChar).Value = txtNombre.Text;
            command.Parameters.Add("@Contrasena", SqlDbType.VarChar).Value = txtContrasena.Text;
            command.Parameters.Add("@Correo", SqlDbType.VarChar).Value = txtCorreo.Text;
            command.Parameters.Add("@Numero", SqlDbType.VarChar).Value = txtNumero.Text;
            command.Parameters.Add("@Direccion", SqlDbType.VarChar).Value = txtDireccion.Text;

            connection.Open();
            int affectedRows = command.ExecuteNonQuery();

            if (affectedRows > 0)
            {
                Mensaje.Text = "Registro actualizado correctamente";
            }
            else
            {
                Mensaje.Text = "No se ha podido actualizar el registro";
            }
            connection.Close();

        }
        void llenaDrop()
        {
            SQL = "SELECT [id_cliente], [nombre] from [cliente]";

            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();
            SqlCommand command = new SqlCommand(SQL, connection);

            SqlDataReader reader = command.ExecuteReader();
            ddUsuarios.DataSource = reader;
            ddUsuarios.DataTextField = "nombre";
            ddUsuarios.DataValueField = "id_cliente";
            ddUsuarios.DataBind();

            reader.Close();
            command.Dispose();
            connection.Close();
        }
        void Limpiar()
        {
            txtIdCliente.Text = "";
            txtNombre.Text = "";
            txtContrasena.Text = "";
            txtCorreo.Text = "";
            txtNumero.Text = "";
            txtDireccion.Text = "";
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            Actualizar();
            mostarDatos();
            Limpiar();
        }
    }
}
