<%@ WebHandler Language="C#" Class="GetDiscount" %>

using System;
using System.Web;
using System.Collections;

public class GetDiscount : IHttpHandler {

    Hashtable htDiscount = new Hashtable();
    
    public void ProcessRequest (HttpContext context) {
        Random r = new Random();
        int startIndex1 = 15145101;
        for (int i = startIndex1; i < 15145140; i++)
        {
            htDiscount.Add(i.ToString(), r.Next(100));
        }

        int startIndex2 = 15145201;
        for (int i = startIndex2; i < 15145240; i++)
        {
            htDiscount.Add(i.ToString(), r.Next(100));
        }
            
        context.Response.ContentType = "text/plain";
        string no = context.Request["no"];
        if (!String.IsNullOrEmpty(no) && htDiscount[no] != null)
        {
            context.Response.Write(htDiscount[no].ToString());
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