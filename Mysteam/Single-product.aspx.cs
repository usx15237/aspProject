using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Single_product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ProductsList.DataSource = ProductsFactory.GetProductsList();
        ProductsList.DataBind();

        string id = Request.QueryString["id"];

        if(Request.QueryString["id"]==null)
        {
            Response.Redirect("Index.aspx");
        }
        else
        {
        Product p = ProductsFactory.GetProductById(id);
        productId.InnerText = p.Id;
        productName.InnerText=p.Name;
        Nowprice.InnerText = p.Price.ToString();
        Oldprice.InnerText = p.OldPrice.ToString();
        Introd1.Src= p.ImgPath;
        Introd2.Src = p.ImgPath2;
        Detail.InnerText = p.Detail;
            Tag.InnerText = p.Tag;
            Class.InnerText = p.Class;
        }


        
    }
}