using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TinyTotsWebApp
{
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
{
            if (!IsPostBack)
            {
                labelHello.Text = "Hello friends! The time is now " + DateTime.Now.ToString();
            }
}

    }
}