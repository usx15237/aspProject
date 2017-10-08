using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomerCenter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Customer customer= Session["Customer"] as Customer;//从session中取出购物车

        UserName.InnerText = customer.UserName;

    }
}