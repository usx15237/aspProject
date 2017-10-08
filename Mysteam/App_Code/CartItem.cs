using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// CartItem 的摘要说明
/// </summary>
public class CartItem
{
    public string Id{get;set;}
    public string Name { get; set; }
    public decimal Price {get;set;}
    public int Quantity{get;set;}
    public decimal SingleTotal{ get; set; }

public CartItem(string id,string name, decimal price,int quantity)
    {
        this.Id = id;
        this.Name = name;
        this.Price = price;
        this.Quantity = quantity;
        this.SingleTotal = this.Price * this.Quantity;
    }
   



	public CartItem()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
}