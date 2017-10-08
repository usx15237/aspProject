<%@ WebHandler Language="C#" Class="CartHandler" %>

using System;
using System.Web;
using System.Web.SessionState;
using System.Web.Script.Serialization;

public class CartHandler : IHttpHandler, IRequiresSessionState
{
    public void ProcessRequest(HttpContext context) {

        context.Response.ContentType = "text/plain";

        string type = context.Request["type"];//读取type指令

        ShoppingCart cart;

        //从Session中获取当前购物车，如果没有的话就造一辆空的。
        if (context.Session["cart"]==null)
        {
            cart = new ShoppingCart();
        }
        else
        {
            cart = (ShoppingCart)context.Session["Cart"];
            //context.Session["Cart"];类型为Object,这里需要进行隐式转换(float转化为int为隐式转换)
        }
        if(type=="add")//新的把商品添加进购物车
        {
            string id = context.Request["id"];
            string name = context.Request["name"];
            decimal price = decimal.Parse(context.Request["price"]);
            int quantity = int.Parse(context.Request["quantity"]);
            cart.AddItem(id,name,price,quantity);
            context.Response.Write(id);
            context.Session["cart"] = cart;
        }

        if(type=="clear")//清空购物车
        {
            cart.ClearAll();
            context.Session["cart"] = cart;
        }

        if(type=="update")//更新购物车
        {
            string id = context.Request["id"];
            int quantity = int.Parse(context.Request["quantity"]);
            cart.UpdateItem(id, quantity);        
            JavaScriptSerializer jss = new JavaScriptSerializer();
            context.Response.Write(jss.Serialize(cart));
            context.Session["cart"] = cart;//更新Session中的购物车信息
        }


    }




    public bool IsReusable {
        get {
            return false;
        }
    }
}






















//从Session中获取购物车对象shoppingCart

//如果shoppingCart为空，则新建一个

//把当前购物项加入购物车对象shoppingCart

//把购物车对象对象shoppingCart写入Session