using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// BrandsFactory 的摘要说明
/// </summary>
public class BrandsFactory
{
    private static List<Brand> list;
    public static List<Brand> GetBrandsList()
    {
        list = new List<Brand>();
        Brand p1 = new Brand("科乐美","img/p1.jpg", "p1");
        list.Add(p1);
        Brand p2 = new Brand("任天堂", "img/p2.jpg", "p2");
        list.Add(p2);
        Brand p3 = new Brand("光荣株氏会所", "img/p3.jpg", "p3");
        list.Add(p3);
        Brand p4 = new Brand("育碧", "img/p4.jpg", "p4");
        list.Add(p4);
        Brand p5 = new Brand("盛大游戏", "img/p5.jpg", "p5");
        list.Add(p5);
        Brand p6 = new Brand("索尼", "img/p6.jpg", "p6");
        list.Add(p6);
        Brand p7 = new Brand("白金工作室", "img/p7.jpg", "p7");
        list.Add(p7);
        Brand p8 = new Brand("史克威尔艾尼克斯", "img/p8.jpg", "p8");
        list.Add(p8);
        Brand p9 = new Brand("EA公司", "img/p9.jpg", "p9");
        list.Add(p9);
        return list;
    }
    public BrandsFactory()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
}