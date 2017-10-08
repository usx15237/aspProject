using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Customer 的摘要说明
/// </summary>
public class Customer
{
    //.设计Customer类，主要包含UserId，UserName，UserPwd，Sex，Birthday（Date类型）,
    // Address，TelNo,Balance(余额，decimal类型)。另外Province和City是2个可选属性，根据自己能力判断是否添加。
    public string UserId { get; set; }
    public string UserName { get; set; }
    public string UserPwd { get; set; }
    public bool Sex { get; set; }
    public DateTime Birthday { get; set; }
    public string Address { get; set; }
    public string TelNo { get; set; }
    public decimal Balance { get; set; }
    public Customer()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    public Customer(string userId, string userName, string userPwd, bool Sex, decimal balance, DateTime birthday, string address, string telNo)
    {
        this.Sex = Sex;
        this.TelNo = telNo;
        this.UserId = userId;
        this.UserName = userName;
        this.UserPwd = userPwd;
        this.Balance = balance;
        this.Birthday = birthday;
        this.Address = address;
    }
}