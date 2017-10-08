using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ProductsList1.DataSource = ProductsFactory.GetProductsList();
        ProductsList1.DataBind();
        BrandsList.DataSource = BrandsFactory.GetBrandsList();
        BrandsList.DataBind();
        ProductsList2.DataSource = ProductsFactory.GetProductsList();
        ProductsList2.DataBind();
        if (Session["customer"] == null)
        {
            login.InnerText="登录";
        }

    }
}