using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace auto.net_Asp.net
{
    public partial class user : System.Web.UI.MasterPage
    {

        sql con = new sql();

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd  = new SqlCommand("select *from tbl_kategoriler",con.baglan());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
        }
    }
}