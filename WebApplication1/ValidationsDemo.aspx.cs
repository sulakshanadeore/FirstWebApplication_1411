﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ValidationsDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode=UnobtrusiveValidationMode.None;
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}