using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace auto.net_Asp.net
{
    public partial class iletisim : System.Web.UI.Page
    {

        sql con = new sql();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into tbl_mesajlar (mesajAd,mesajKonu,mesajIcerik,mesajMail) values (@p1,@p2,@p3,@p4)",con.baglan());
            cmd.Parameters.AddWithValue("@p1", txtAd.Text);
            cmd.Parameters.AddWithValue("@p2",txtKonu.Text);
            cmd.Parameters.AddWithValue("@p3",txtMesaj.Text);
            cmd.Parameters.AddWithValue("@p4", txtMail.Text);
            cmd.ExecuteNonQuery();
            con.baglan().Close();
        }
    }
}