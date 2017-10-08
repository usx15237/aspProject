using System;
using System.Collections;

class HashTableTest
{
    //本程序需要新建控制台应用程序才能运行
    //这里只是阅读代码，理解HashTable使用方法
    static void Main(string[] args)
    {
        Hashtable openWith = new Hashtable();
        openWith.Add("txt", "notepad.exe");
        openWith.Add("bmp", "paint.exe");
        openWith.Add("dib", "paint.exe");
        openWith.Add("rtf", "wordpad.exe");

        Console.WriteLine();
        Console.WriteLine("Hashtable 中的键/值对的数目={0}", openWith.Count);
        Console.WriteLine(openWith.GetType());

        // key不能相同，但value可以相同
        // The Add method throws an exception if the new key is already in the hash table.           
        try
        {
            openWith.Add("txt", "winword.exe");
        }
        catch
        {
            Console.WriteLine("An element with Key = \"txt\" already exists.");
        }

        Console.WriteLine("For key = \"rtf\", value = {0}.", openWith["rtf"]);

        openWith["rtf"] = "winword.exe";
        Console.WriteLine("For key = \"rtf\", value = {0}.", openWith["rtf"]);

        openWith["doc"] = "word.exe";
        try
        {
            Console.WriteLine("For key = \"doc\", value = {0}.", openWith["doc"]);
        }
        catch
        {
            Console.WriteLine("Key = \"doc\" is not found.");
        }



        try
        {
            Console.WriteLine("For key = \"tif\", value = {0}.", openWith["tif"]);
        }
        catch
        {
            Console.WriteLine("Key = \"tif\" is not found.");
        }

        //key是区分大小写的
        if (!openWith.ContainsKey("ht"))
        {
            openWith.Add("ht", "hypertrm.exe");
            Console.WriteLine("Value added for key = \"ht\": {0}", openWith["ht"]);
        }
        if (!openWith.ContainsKey("Ht"))
        {
            openWith.Add("Ht", "case.exe");
            Console.WriteLine("Value added for key = \"Ht\": {0}", openWith["Ht"]);
        }

        //遍历哈希表
        //元素类型既不是键的类型，也不是值的类型,而是 DictionaryEntry 类型。
        Console.WriteLine();
        
        foreach (DictionaryEntry de in openWith)
        {
            Console.WriteLine("Key = {0}, Value = {1}", de.Key, de.Value);
        }


        //对哈希表进行排序在这里的定义是对键值对中的key按一定规则重新排列，
        //但是实际上这个定义是不能实现的，
        //因为我们无法直接在Hashtable中对key进行重新排列，
        //如果需要Hashtable提供某种规则的输出，可以采用一种变通的做法：

        ArrayList akeys = new ArrayList(openWith.Keys); //别忘了导入System.Collections
        akeys.Sort(); //按字母顺序进行排序 
        foreach (string skey in akeys)
        {
            Console.Write(skey + ":");
            Console.WriteLine(openWith[skey]);//排序后输出 　
        }

        //ICollection 接口是 System.Collections 命名空间中类的基接口。
        //public interface IDictionary : ICollection, IEnumerable
        //IDictionary 是实现键/值对的集合，如 Hashtable 类。
        //IDictionary 接口是键/值对的非通用集合的基接口
        //由于IDictionary 的每个元素都是一个键/值对，因此元素类型既不是键的类型，也不是值的类型。而是 DictionaryEntry 类型。  

        ICollection valueColl = openWith.Values;
        Console.WriteLine();
        foreach (string s in valueColl)
        {
            Console.WriteLine("Value = {0}", s);
        }
        ICollection keyColl = openWith.Keys;
        Console.WriteLine();
        foreach (string s in keyColl)
        {
            Console.WriteLine("Key = {0}", s);
        }

        //移除doc键值对
        Console.WriteLine("\nRemove(\"doc\")");
        openWith.Remove("doc");

        if (!openWith.ContainsKey("doc"))
        {
            Console.WriteLine("Key \"doc\" is not found.");
        }

        //移除所有键值对
        Console.WriteLine();
        openWith.Clear();
        Console.WriteLine("\"tif\"={0}", openWith["rtf"]);

        Console.WriteLine();
        Console.WriteLine("Hashtable 中的键/值对的数目={0}", openWith.Count);

        Console.ReadKey();
    }
}


