using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Brand 的摘要说明
/// </summary>
public class Brand
{
    public string Name { get; set; }
    public string ImgPath { get; set; }
    public string TypeId { get; set; }

    public Brand(string name, string imgpath, string typeid)
    {
        this.Name = name;
        this.ImgPath = imgpath;
        this.TypeId = typeid;
        //
        // TODO: 在此处添加构造函数逻辑
    }
}