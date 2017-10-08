using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// CustomerFactory 的摘要说明
/// </summary>
public class CustomerFactory
{
    private static List<Customer> list;
    public static List<Customer> GetCustomersList()
    {
        
        list = new List<Customer>();
        Customer p1 = new Customer("1", "钢铁侠", "110552603gtx", true,1000,DateTime.Parse("2014-01-24"),"纽约","1105526031");
        Customer p2 = new Customer("2", "超人", "110552603cr", false, 1000, DateTime.Parse("2013-03-24"), "大都会", "1105526032");
        Customer p3 = new Customer("3", "蜘蛛侠", "110552603zzx", true, 1000, DateTime.Parse("2012-08-14"), "皇后街", "1105526033");
        Customer p4 = new Customer("4", "神奇女侠", "110552603sqnx", false, 1000, DateTime.Parse("2017-01-22"), "天堂岛", "1105526034");
        list.Add(p1);
        list.Add(p2);
        list.Add(p3);
        list.Add(p4);
        return list;
    }

    public static Customer GetCustomerByName(string name)//根据用户名查找用户
    {
        List<Customer> list = CustomerFactory.GetCustomersList();
        Customer r = new Customer();
        foreach (var p in list)
        {
            if (p.UserName.Equals(name))
            {
                return p;
            }
        }
        return r;
    }

    public static Customer GetCustomerByUserPwd(string pwd)//根据密码查找用户
    {
        List<Customer> list = CustomerFactory.GetCustomersList();
        Customer r = new Customer();
        foreach (var p in list)
        {
            if (p.UserPwd.Equals(pwd))
            {
                return p;
            }
        }
        return r;
    }

    public CustomerFactory()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
}