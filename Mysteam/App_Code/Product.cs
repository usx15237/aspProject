using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Product 的摘要说明
/// </summary>
public class Product
{

    public string Name { get; set; }
    public double Price { get; set; }
    public double OldPrice { get; set; }
    public string Desc { get; set; }
    public string ImgPath { get; set; }
    public string ImgPath2 { get; set; }
    public string Id { get; set; }
    public string Class { get; set; }
    public string Tag { get; set; }
    public string Detail { get; set; }

    public string Rewards { get; set; }



    public Product(string name, double price, double oldPrice,string desc, string imgpath,string imgpath2, string id,string detail,string Class,string tag)
    {
        this.Name = name;
        this.Price = price;
        this.OldPrice = oldPrice;
        this.Desc = desc;
        this.ImgPath = imgpath;
        this.ImgPath2 = imgpath2;
        this.Id = id;
        this.Detail = detail;
        this.Class = Class;
        this.Tag = tag;
        //
        // TODO: 在此处添加构造函数逻辑
    }
    public Product()
    {

    }
}