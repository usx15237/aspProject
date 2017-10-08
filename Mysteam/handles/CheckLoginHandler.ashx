<%@ WebHandler Language="C#" Class="CheckLoginHandler" %>

using System;
using System.Web;
using System.Web.SessionState;
using System.Web.Script.Serialization;

/*后台：新建CheckLoginHandler.ashx，
（1）获取提交的UserId和UserPwd
（2）设置返回变量msg
（3）调用CustomerFactory类中的GetCustomerByUserId方法，
如果不能取得Customer对象表示用户名正确错误，设定msg为"userIdError"，
否则表示用户名正确，在判断Customer对象中的UserPwd属性与用户提交的UserPwd是否一致
    如果不一致，设定msg为"userPwdError"，
    否则设定msg为"ok"，并把Customer对象写入Session。
（4）输出msg变量*/


public class CheckLoginHandler : IHttpHandler, IRequiresSessionState
{
    public void ProcessRequest(HttpContext context)
    {

        context.Response.ContentType = "text/plain";

        Customer customer;
        if (context.Session["customer"] == null)
        {
            customer = new Customer();
        }
        else
        {
            customer = (Customer)context.Session["customer"];

        }



        string type = context.Request["type"];//读取type指令


        if (type == "show")
        {
            JavaScriptSerializer jss = new JavaScriptSerializer();
            context.Response.Write(jss.Serialize(customer));

        }


        if (type == "login")//反馈登录信息
        {

            var msg = "";
            string UserName = context.Request["name"];
            string UserPwd = context.Request["pwd"];
            if (CustomerFactory.GetCustomerByName(UserName).UserName == null)
            {
                msg = "userNameError";

            }
            else if (CustomerFactory.GetCustomerByUserPwd(UserPwd).UserName == null)
            {
                msg = "userPwdError";

            }
            else
            {
                msg = "ok";
                customer = CustomerFactory.GetCustomerByUserPwd(UserPwd);
                context.Session["customer"] = customer;//更新Session中的用户信息
                JavaScriptSerializer jss = new JavaScriptSerializer();//利用json弥补ajax一次只能传输一个数据的缺陷
                msg = jss.Serialize(customer);

            }
            context.Response.Write(msg);
        }


        if (type == "login_state")//判断登录状态
        {
            customer = (Customer)context.Session["customer"];
            if(context.Session["customer"]!=null)
            {
                context.Response.Write(customer.UserName);
            }
            else
            {
                var msg = "";
                context.Response.Write(msg);
            }

        }

    }
    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
}