using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GameWebApplication
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page prevPage = Page.PreviousPage;
            
            if(prevPage != null)
            {
                TextBox1.Text = Session["name"].ToString();
                TextBox2.Text = Session["TID"].ToString();
                TextBox3.Text = Session["Age"].ToString();
                TextBox4.Text = Session["Gender"].ToString();
                TextBox5.Text = Session["Country"].ToString();
                TextBox6.Text = Session["UserName"].ToString();
                Password1.Text = Session["Password"].ToString();
                TextBox7.Text = Session["Pokecount"].ToString();
                TextBox8.Text = Session["TLevel"].ToString();
                DropDownList1.Text = Session["Team"].ToString();
                TextBox9.Text = Session["PokeBuddy"].ToString();
            } 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["name"] = TextBox1.Text;
            Session["TID"] = TextBox2.Text;
            Session["Age"] = TextBox3.Text;
            Session["Gender"] = TextBox4.Text;
            Session["Country"] = TextBox5.Text;
            Session["UserName"] = TextBox6.Text;
            Session["Password"] = Password1.Text;
            Session["Pokecount"] = TextBox7.Text;
            Session["TLevel"] = TextBox8.Text;
            Session["Team"] = DropDownList1.Text;
            Session["PokeBuddy"] = TextBox9.Text;

            Server.Transfer("~/Confirm.aspx");

        }
    }
}