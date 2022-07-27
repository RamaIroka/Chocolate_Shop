using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chocolate_Shop.All_Pages.User_Pages
{
    public partial class SignUp1 : System.Web.UI.Page
    {
        //open sql
        string CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsignup_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("InsertUser", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@FullName", Textname.Text);
                    cmd.Parameters.AddWithValue("@Email", textemail.Text);
                    cmd.Parameters.AddWithValue("@phone", textphone.Text);
                    cmd.Parameters.AddWithValue("@Password", textpassword.Text);
                    cmd.Parameters.AddWithValue("@Usertype", 'U');
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    SqlConnection cmds = new SqlConnection(CS);
                    string com = "   Select  * from tbl_Users " +
                                 " where Email = '" + textemail.Text + "' and Password = '" + textpassword.Text + "'  ";
                    SqlDataAdapter adpt = new SqlDataAdapter(com, CS);
                    DataTable dt = new DataTable();
                    adpt.Fill(dt);
                    cmds.Open();

                    if (dt.Rows.Count > 0)
                    {
                        lblmsg.ForeColor = System.Drawing.Color.Green;
                        lblmsg.Text = "ההרשמה בוצעה בהצלחה";
                        Response.Redirect("~/All Pages/User Pages/Login.aspx");
                    }
                    else
                    {
                        lblmsg.ForeColor = Color.Red;
                        lblmsg.Text = "משתמש שגוי ! כבר נרשמת מרשת זו \n אנא השתמש בחשבונך הקיים. \n לפרטים נוספים אנא צור קשר לתמיכה.";
                    }
                }
            }
            catch
            {
                lblmsg.ForeColor = System.Drawing.Color.Red;
                lblmsg.Text = "שכפול משתמש \n משתמש שגוי! \n";// + ex.Message;
            }
        }
    }
}