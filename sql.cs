using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace auto.net_Asp.net
{
    public class sql
    {
        
        public SqlConnection baglan()
        {
            SqlConnection baglanti = new SqlConnection(@"Data Source=SERKANKAYA;Initial Catalog=dbo_autoNET;Integrated Security=True");
            baglanti.Open();
            return baglanti;
        }

    }
}