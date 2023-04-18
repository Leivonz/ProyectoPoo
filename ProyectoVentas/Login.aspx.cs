using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoVentas
{
    public partial class Login : System.Web.UI.Page
    {
        public string connectionString;
        public string SQL;
        protected void Page_Load(object sender, EventArgs e)
        {
            connectionString = ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString; //configurar connection string para el mantenedor
        }
        void iniciarSesión()
        {
            SQL = "SELECT COUNT(*) FROM usuario_sv WHERE nombre_usuario='" + txtUsuario.Text + "' AND contrasena_usuario='" + txtContrasena.Text + "'";
            SqlDataAdapter adapter = new SqlDataAdapter(SQL, connectionString);

            DataTable dt = new DataTable();
            adapter.Fill(dt);//revisar, 'usuario_sv' no existe

            if (dt.Rows[0][0].ToString() == "1")
            {
                Response.Redirect("Mantenedores/Inicio.aspx");
            }
            else
            {
                lbTexto.Text = "Usuario o contraseña inválidos";
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            iniciarSesión();
        }
    }
}