using System;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Collections.Generic;
using System.Linq;
using System.Web.Configuration;
using MySql.Data.MySqlClient;

public partial class DOE_yes : System.Web.UI.Page
{
    [System.Web.Services.WebMethod]
    protected void Page_Load(object sender, EventArgs e)
    {
        count_categorydata();
       
    }

    public static string GetCount(string count)
    {
        return count;
    }

    protected void count_categorydata()
    {
        string doe_str = "select count(*) from npi_ep_category where EP_Cate_Stage='PI1' and EP_Cate_Iiitems = 'PI Thickness (um)' and EP_Cate_SpeChar='PI CD' ";
        string count = "";

        MySqlConnection MySqlConn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MySQL"].ConnectionString);
        MySqlConn.Open();

        MySqlCommand MySqlCmd = new MySqlCommand(doe_str, MySqlConn);
        MySqlDataReader mydr = MySqlCmd.ExecuteReader();

        while(mydr.Read())
        {
           count = mydr["count(*)"].ToString();
        }

        string strScript = string.Format("<script language='javascript'>createtable("+count+");</script>");
        Page.ClientScript.RegisterStartupScript(this.GetType(), "onload", strScript);


    }

    protected void rec_categorydata()
    {
        string doe_str = "select count(*) from npi_ep_category where EP_Cate_Stage='PI1' and EP_Cate_Iiitems = 'PI Thickness (um)' and EP_Cate_SpeChar='PI CD' ";
        string count = "";

        string[] category_kp = new string[50];


        MySqlConnection MySqlConn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MySQL"].ConnectionString);
        MySqlConn.Open();

        MySqlCommand MySqlCmd = new MySqlCommand(doe_str, MySqlConn);
        MySqlDataReader mydr = MySqlCmd.ExecuteReader();

        


        while (mydr.Read())
        {
                for(int i = 0; i < mydr.FieldCount; i++)
                {
                     category_kp[i] = mydr["EP_Cate_KP"].ToString();
                }
            
        }

        string strScript = string.Format("<script language='javascript'>createtable(" + count +','+ category_kp + ");</script>");
        Page.ClientScript.RegisterStartupScript(this.GetType(), "onload", strScript);


    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        string strScript = string.Format("<script language='javascript'>createtable(20);</script>");
        Page.ClientScript.RegisterStartupScript(this.GetType(), "onload", strScript);
    }
}