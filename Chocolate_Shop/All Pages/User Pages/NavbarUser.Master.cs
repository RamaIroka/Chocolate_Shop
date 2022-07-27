using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chocolate_Shop.All_Pages.User_Pages
{
    public partial class Navbar : System.Web.UI.MasterPage
    {
        String CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                SelectNavbarCategories();
            }
        }

        private void SelectNavbarCategories()
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                //select all data of table categories
                using (SqlCommand cmd = new SqlCommand("select * from tbl_Categories", con))
                {
                    cmd.CommandType = CommandType.Text;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dtBrands = new DataTable();
                        sda.Fill(dtBrands);
                        RepeaterCategories.DataSource = dtBrands;
                        RepeaterCategories.DataBind();
                    }
                }
            }
        }



    }
}