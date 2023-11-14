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
                Response.Write("<br/>");
                Response.Write("You selected " + DropDownList1.SelectedItem.Text);
                Response.Write("<br/>");
                Response.Write("You selected " + DropDownList1.SelectedItem.Value);
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

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            int ans = Convert.ToInt32(txtfno.Text) / Convert.ToInt32(txtsno.Text);
            txtans.Text = ans.ToString();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            int ans = Convert.ToInt32(txtfno.Text) * Convert.ToInt32(txtsno.Text);
            txtans.Text = ans.ToString();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Response.Write("You selected " + DropDownList1.SelectedValue); 
            //Response.Write("You selected " + DropDownList1.Text);
            Response.Write("You selected " + DropDownList1.SelectedItem.Text);
            Response.Write("You selected " + DropDownList1.SelectedItem.Value);
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtdate.Text = Calendar1.SelectedDate.ToLongDateString();
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WebForm2.aspx");
        }
    }
}