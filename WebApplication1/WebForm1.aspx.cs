using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)//not going to the server for the next time/second time/ ie I am visiting first time
            {
                Response.Write("Loading complete...... Welcome .... U have come here first time.....");
            }
            else
            {
                Response.Write("Thanks for revisiting.....");
            }
            
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            int ans = Convert.ToInt32(txtfno.Text) + Convert.ToInt32(txtsno.Text);
            txtans.Text = ans.ToString();

        //    txtans.Text = (Convert.ToInt32(txtfno.Text) + Convert.ToInt32(txtsno.Text)).ToString();
             

        }
    }
}