﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace auto.net_Asp.net
{
    public partial class gununAraci : System.Web.UI.Page
    {

        sql con = new sql();

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select *from tbl_Arabalar where arabaDurum=1", con.baglan());
            SqlDataReader dr = cmd.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
            con.baglan().Close();
        }
    }
}