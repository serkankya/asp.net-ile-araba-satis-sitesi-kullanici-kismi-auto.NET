using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace auto.net_Asp.net
{
    public partial class ilanPaylas : System.Web.UI.Page
    {

        sql con = new sql();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                SqlCommand cmd1 = new SqlCommand("select *from tbl_kategoriler", con.baglan());
                SqlDataReader dr = cmd1.ExecuteReader();
                DropDownList1.DataTextField = "kategoriAd";
                DropDownList1.DataValueField = "kategoriID";
                DropDownList1.DataSource = dr;
                DropDownList1.DataBind();
            }
        }

        protected void btnPaylas_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into tbl_ilanArabalar (ilanMarka,ilanModel,ilanYil,ilanKm,ilanHasarKaydi,ilanHakkinda,ilanTelNo,ilanSahip,ilanMail,ilanFiyat) values (@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10)", con.baglan());
            cmd.Parameters.AddWithValue("@p1",txtMarka.Text);
            cmd.Parameters.AddWithValue("@p2", txtModel.Text);
            cmd.Parameters.AddWithValue("@p3",txtYil.Text);
            cmd.Parameters.AddWithValue("@p4", txtKm.Text);
            cmd.Parameters.AddWithValue("@p5", txtHasarKaydi.Text);
            cmd.Parameters.AddWithValue("@p6", txtHakkinda.Text);
            cmd.Parameters.AddWithValue("@p7", txtTelNo.Text);
            cmd.Parameters.AddWithValue("@p8",txtSahip.Text);
            cmd.Parameters.AddWithValue("@p9",txtMail.Text);
            cmd.Parameters.AddWithValue("@p10", txtFiyat.Text);
            
            cmd.ExecuteNonQuery();
            con.baglan().Close();

            FileUpload1.SaveAs(Server.MapPath("~/resimler/" + FileUpload1.FileName));

            //yemegi ekleme
            SqlCommand cmd3 = new SqlCommand("insert into tbl_Arabalar (arabaMarka,arabaModel,arabaYil,arabaKm,arabaHasarKaydi,arabaHakkinda,telefonNo,arabaSahip,arabaFiyat,arabaResim,kategoriID) values (@p11,@p22,@p33,@p44,@p55,@p66,@p77,@p88,@p99,@p12,@p13)", con.baglan());
            cmd3.Parameters.AddWithValue("@p11", txtMarka.Text);
            cmd3.Parameters.AddWithValue("@p22", txtModel.Text);
            cmd3.Parameters.AddWithValue("@p33", txtYil.Text);
            cmd3.Parameters.AddWithValue("@p44", txtKm.Text);
            cmd3.Parameters.AddWithValue("@p55", txtHasarKaydi.Text);
            cmd3.Parameters.AddWithValue("@p66", txtHakkinda.Text);
            cmd3.Parameters.AddWithValue("@p77", txtTelNo.Text);
            cmd3.Parameters.AddWithValue("@p88", txtSahip.Text);
            cmd3.Parameters.AddWithValue("@p99", txtFiyat.Text);
            cmd3.Parameters.AddWithValue("@p12", "~/resimler/"+FileUpload1.FileName);
            cmd3.Parameters.AddWithValue("@p13", DropDownList1.SelectedValue);
            
            cmd3.ExecuteNonQuery();
            con.baglan().Close();
        }
    }
}