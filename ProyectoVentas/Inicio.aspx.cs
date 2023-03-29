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
            txtNombre.Text = dgvClientes.SelectedRow.Cells[2].Text;
            txtContrasena.Text = dgvClientes.SelectedRow.Cells[3].Text;
            txtCorreo.Text = dgvClientes.SelectedRow.Cells[4].Text;
            txtNumero.Text = dgvClientes.SelectedRow.Cells[5].Text;
            txtDireccion.Text = dgvClientes.SelectedRow.Cells[6].Text;
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
        }
    }
}
