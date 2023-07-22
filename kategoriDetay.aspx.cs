using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace auto.net_Asp.net
{
    public partial class kategoriDetay : System.Web.UI.Page
    {

        sql con = new sql();
        string kategoriID = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            kategoriID = Request.QueryString["kategoriID"];

            SqlCommand cmd = new SqlCommand("select *from tbl_Arabalar where kategoriID=@p1", con.baglan());
            cmd.Parameters.AddWithValue("@p1", kategoriID);
            SqlDataReader dr = cmd.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
            con.baglan().Close();
        }
    }
}