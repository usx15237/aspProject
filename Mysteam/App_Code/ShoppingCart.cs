using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// ShoppingCart 的摘要说明
/// </summary>
public class ShoppingCart
{
    private Hashtable htCartItems=new Hashtable();//购物车列表

    public ICollection CartItems
    {
        get { return htCartItems.Values; }
    }

    // 创建属性TotalMoney，用于获取购物车中商品总价
    public decimal TotalMoney
    {
        get
        {
            decimal sum = 0;
            foreach (CartItem item in htCartItems.Values)
            {
                sum += item.Price * item.Quantity;
            }
            return sum;
        }
    }

    // 创建属性TotalMoney，用于获取购物车中商品总数量
    public int TotalCount
    {
        get
        {
            int sum = 0;
            foreach (CartItem item in htCartItems.Values)
            {
                sum += item.Quantity;
            }
            return sum;
        }
    }

    public ShoppingCart()
	{

		//
		// TODO: 在此处添加构造函数逻辑
		//
   }   
    public void AddItem(string id, string name, decimal price, int quantity)// 实现将商品添加到购物车中
    {
        CartItem item = (CartItem)htCartItems[id];
        if (item == null)
        {
            item = new CartItem(id, name, price, quantity);
            htCartItems.Add(id,item);
        }
        else
        {
            item.Quantity++;
            htCartItems[id] = item;
        }
    }  
   
    public void UpdateItem(string id, int quantity)
    {
        CartItem item = (CartItem)htCartItems[id];
        if (item != null)
        {
            if (quantity <= 0)
            {
                htCartItems.Remove(id);
            }
            else
            {
                item.Quantity = quantity;
                htCartItems[id] = item;
            }
        }
    }

    public void ClearAll()
    {
        htCartItems.Clear();

    }

    public CartItem GetCartItemById(string id)
    {
        return (CartItem)htCartItems[id];
    }
}