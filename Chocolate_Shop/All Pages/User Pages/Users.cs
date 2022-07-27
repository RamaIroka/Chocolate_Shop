using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Chocolate_Shop.All_Pages.User_Pages
{
    public class Users
    {
        //Open sql
        String CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

        private string Fullname;
        private string Password;
        private string Email;
        private int Phone;


        //Constuctor
        public Users(string fullname, string password, string email, int phone)
        {
            this.Fullname = fullname;
            this.Password = password;
            this.Email = email;
            this.Phone = phone;
        }

        public Users(System.Web.UI.WebControls.TextBox textname)
        {
        }

        public void Insert(string fullname, string password, string email, int phone)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                //insert user in table user
                SqlCommand cmd = new SqlCommand("InsertTblUser", con);
                cmd.CommandType = CommandType.StoredProcedure;

                //add value "first name"
                cmd.Parameters.AddWithValue("@Fullname", fullname);
                //add value "phone"
                cmd.Parameters.AddWithValue("@Phone", phone);
                //add value "email"
                cmd.Parameters.AddWithValue("@Email", email);
                //add value "password"
                cmd.Parameters.AddWithValue("@Password", password);
                //add value "Usertype" - U means user
                cmd.Parameters.AddWithValue("@Usertype", 'U');
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }

        //Get+Set
        public string fullname
        {
            get { return Fullname; }
            set { Fullname = value; }
        }
        public string email
        {
            get { return Email; }
            set { Email = value; }
        }
        public string password
        {
            get { return Password; }
            set { Password = value; }
        }
        public int phone
        {
            get { return Phone; }
            set { Phone = value; }
        }
    }
}