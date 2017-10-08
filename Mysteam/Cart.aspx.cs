using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["cart"]!=null)
        {
        ShoppingCart cart=Session["cart"] as ShoppingCart;//从session中取出购物车
        rptCartItems.DataSource = cart.CartItems;
        rptCartItems.DataBind();
        carttotal.InnerText = cart.TotalMoney.ToString();//购物车商品总价
        amounttotal.InnerText = cart.TotalCount.ToString();//购物车商品总数
        }
        
    }
}