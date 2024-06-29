using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Employee_Survey_Form
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string Ename = TextBox1.Text;
            string Address=TextBox2.Text;
            string mobile = TextBox3.Text;
            string EmailID= TextBox4.Text;
            string Company = TextBox5.Text;
            int Experience = Convert.ToInt32(TextBox6.Text);
            string located = RadioButtonList1.Text;
            string state = TextBox7.Text;
            int age = Convert.ToInt32(TextBox8.Text);

            string cs = "data source =RISHI_EMPIRE\\SQLEXPRESS; database = TestDB; Integrated security = SSPI";
            SqlConnection con = new SqlConnection(cs);
            string query = string.Format("insert into employee values('{0}','{1}','{2}','{3}','{4}',{5},'{6}','{7}',{8})",Ename,Address,mobile,EmailID,Company,Experience,located,state,age);

            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            ClientScript.RegisterClientScriptBlock(this.GetType(),"k","alert('Record Inserted!!')",true);

            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
        }
    }
}