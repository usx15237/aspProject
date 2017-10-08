<%@ WebHandler Language="C#" Class="GetDiscount" %>

using System;
using System.Web;
using System.Collections;

public class GetDiscount : IHttpHandler {

    Hashtable htDiscount = new Hashtable();
    
    public void ProcessRequest (HttpContext context) {   //准备哈希函数
        Random r = new Random();
        for (int i = 1; i <= 8; i++)
        {
            for (int j = 1; j <= 8; j++)
            {
                htDiscount.Add(i.ToString()+j.ToString(), "9." + r.Next(10).ToString());
            }
        }
        context.Response.ContentType = "text/plain";
        string id = context.Request["id"];    //
        if (!String.IsNullOrEmpty(id) && htDiscount[id] != null)
        {
            context.Response.Write(htDiscount[id].ToString());
        }
        
        else
        {
            context.Response.Write("error");
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}
//不带界面的代码