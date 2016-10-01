using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GameWebApplication
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Display();
        }

        protected void Display()
        {
            NameDisplay.Text = Session["name"].ToString();
            TIDDisplay.Text = Session["TID"].ToString();
            AgeDisplay.Text = Session["Age"].ToString();
            GenderDisplay.Text = Session["Gender"].ToString();
            CountryDisplay.Text = Session["Country"].ToString();
            UserNameDisplay.Text = Session["UserName"].ToString();
            PwdDisplay.Text = Session["Password"].ToString();
            PokedexDisplay.Text = Session["Pokecount"].ToString();
            TLDisplay.Text = Session["TLevel"].ToString();
            TeamDisplay.Text = Session["Team"].ToString();
            PBDisplay.Text = Session["PokeBuddy"].ToString();
        }

        protected void Confirm_Click(object sender, EventArgs e)
        {
            string cname = Session["name"].ToString();
            int ctid = Convert.ToInt32(Session["TID"]);
            int cage = Convert.ToInt32(Session["Age"]);
            string cgender = Session["Gender"].ToString();
            string ccountry = Session["Country"].ToString();
            string cusername = Session["UserName"].ToString();
            string cpwd = Session["Password"].ToString();
            int cpokecount = Convert.ToInt32(Session["Pokecount"]);
            int ctlevel = Convert.ToInt32(Session["TLevel"]);
            string cteam = Session["Team"].ToString();
            string cpokebuddy = Session["PokeBuddy"].ToString();


            callme(cname, ctid, cage, cgender, ccountry, cusername, cpwd, cpokecount, ctlevel, cteam, cpokebuddy);

            Console.WriteLine("\n\nDetails Submitted to Database Successfully.\n");
        }

        public string GetConnStr()
        {
            return System.Configuration.ConfigurationManager.ConnectionStrings["GameConnectionString"].ConnectionString;
        }

        protected void callme(string cname, int ctid, int cage, string cgender, string ccountry, string cusername, string cpwd, int cpokecount, int ctlevel, string cteam, string cpokebuddy)
        {
            SqlConnection con = new SqlConnection(GetConnStr());
            string sql = "INSERT INTO Pokemon (Name, TrainerID, Age, Gender, Country, UserName, Password, PokedexCount, TrainerLevel, Team, PokemonBuddy) VALUES" + " (@dbname,@dbtid,@dbage,@dbgen,@dbcon,@dbun,@dbpwd,@dbpc,@dbtl,@dbteam,@dbpbud)";

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(sql, con);
                SqlParameter[] param = new SqlParameter[11];
                param[0] = new SqlParameter("@dbname", SqlDbType.NVarChar,50);
                param[1] = new SqlParameter("@dbtid", SqlDbType.Int, 18);
                param[2] = new SqlParameter("@dbage", SqlDbType.Int, 18);
                param[3] = new SqlParameter("@dbgen", SqlDbType.NChar,10);
                param[4] = new SqlParameter("@dbcon", SqlDbType.NVarChar,50);
                param[5] = new SqlParameter("@dbun", SqlDbType.NVarChar,50);
                param[6] = new SqlParameter("@dbpwd", SqlDbType.NVarChar,50);
                param[7] = new SqlParameter("@dbpc", SqlDbType.Int, 18);
                param[8] = new SqlParameter("@dbtl", SqlDbType.Int, 18);
                param[9] = new SqlParameter("@dbteam", SqlDbType.NVarChar,50);
                param[10] = new SqlParameter("@dbpbud", SqlDbType.NVarChar,50);

                param[0].Value = cname;
                param[1].Value = ctid;
                param[2].Value = cage;
                param[3].Value = cgender;
                param[4].Value = ccountry;
                param[5].Value = cusername;
                param[6].Value = cpwd;
                param[7].Value = cpokecount;
                param[8].Value = ctlevel;
                param[9].Value = cteam;
                param[10].Value = cpokebuddy;

                for(int i = 0; i < param.Length; i++)
                {
                    cmd.Parameters.Add(param[i]);
                }

                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();

            }

            catch (SqlException e)
            {
                string msg = "ERROR in Database operation INSERT\n";
                msg += e.Message;
                throw new Exception(msg);
                 
            }

            finally
            {
                con.Close();

            }

        }

        protected void btnPrevPage_Click(object sender, EventArgs e)
        {
            Session["name"] = NameDisplay.Text;
            Session["TID"] = TIDDisplay.Text;
            Session["Age"] = AgeDisplay.Text;
            Session["Gender"] = GenderDisplay.Text;
            Session["Country"] = CountryDisplay.Text;
            Session["UserName"] = UserNameDisplay.Text;
            Session["Password"] = PwdDisplay.Text;
            Session["Pokecount"] = PokedexDisplay.Text;
            Session["TLevel"] = TLDisplay.Text;
            Session["Team"] = TeamDisplay.Text;
            Session["PokeBuddy"] = PBDisplay.Text;

            Server.Transfer("~/Default.aspx");
        }
    }
}