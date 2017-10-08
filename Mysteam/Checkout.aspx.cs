using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Checkout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["cart"] != null)
        {
            ShoppingCart cart = Session["cart"] as ShoppingCart;
            product.DataSource = cart.CartItems;
            product.DataBind();          
            amount.InnerText = cart.TotalMoney.ToString();
            cmount.InnerText = cart.TotalCount.ToString();
            cprice.InnerText = cart.TotalMoney.ToString();
        }


    }
}