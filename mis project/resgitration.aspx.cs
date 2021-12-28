using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;

namespace mis_project
{
    public partial class resgitration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            OleDbConnection f = new OleDbConnection(ConfigurationManager.ConnectionStrings["lib"].ConnectionString);
            OleDbCommand cmd = new OleDbCommand("insert into [user]([username],[password],[confirm password],[email]) values('" + username.Text + "','" + pass.Text + "','" + copass.Text + "','" + email.Text + "')", f);
            f.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("homepage.aspx");
            f.Close();
        }
    }
}