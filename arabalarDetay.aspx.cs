using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace auto.net_Asp.net
{
    public partial class arabalarDetay : System.Web.UI.Page
    {

        sql con = new sql();
        string arabaID = "arabaID";

        protected void Page_Load(object sender, EventArgs e)
        {
            //arabayı gösterme
            arabaID = Request.QueryString["arabaID"];


            SqlCommand cmd = new SqlCommand("select arabaMarka,arabaModel from tbl_Arabalar where arabaID=@p1", con.baglan());
            cmd.Parameters.AddWithValue("@p1", arabaID);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Label2.Text = dr[0].ToString();
                Label6.Text = dr[1].ToString();
            }
            con.baglan().Close();

            //yorumları listeleme

            SqlCommand cmd2 = new SqlCommand("select *from tbl_yorumlar where arabaID=@p2", con.baglan());
            cmd2.Parameters.AddWithValue("@p2", arabaID);
            SqlDataReader dr2 = cmd2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into tbl_yorumlar (yorumSahip,yorumIcerik,yorumMail,arabaID) values (@p1,@p2,@p3,@p4)", con.baglan());
            cmd.Parameters.AddWithValue("@p1", txtAd.Text);
            cmd.Parameters.AddWithValue("@p2", txtIcerik.Text);
            cmd.Parameters.AddWithValue("@p3", txtMail.Text);
            cmd.Parameters.AddWithValue("@p4", arabaID);
            cmd.ExecuteNonQuery();
            con.baglan().Close();
        }
    }
}