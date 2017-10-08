using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// ProductsFactory 的摘要说明
/// </summary>
public class ProductsFactory
{
    private static List<Product> list;
    public static List<Product>GetProductsList()
    {
        list = new List<Product>();
        Product p1 = new Product("Outlast", 78, 90, "[Outlast]是一款生存恐怖游戏，玩家扮演一位独立新闻记者，被派去调查一间重新开门营业的精神病患者之家。", "img/h4-slide.jpg", "img/h4-slide11.jpg", "1", "《逃生2》作为《逃生》的续作，故事将发生在同一个世界当中，但将采用全新的角色和设定，你将扮演一位摄像师Blake Langermann，和妻子Lynn一起工作。你们两个将冒险去探寻那些没有人敢触及的秘密，一切都将会由一个看似无解的谋杀孕妇案件展开，仅有的信息是死者的名字叫做Jane Doe，而案件所有的线索都指向了亚利桑那的沙漠。", "恐怖，生存", "村子，宗教，邪教徒，血腥，恐怖");
        Product p2 = new Product("Prey", 199, 200, "在[Prey]中，玩家将扮演一位名叫摩根的角色，他加入了一项为提高人类而设计，但道德暧昧的实验。", "img/h4-slide2.jpg", "img/h4-slide22.jpg", "2", "在一次由异世界所引发的危机中，偶然间唤醒了沉睡在身体中多年神秘力量和尘封已久的记忆，为了从邪恶手中拯救自己和女友以及自己所热爱的行星，汤米毅然踏上了冒险之旅。在宇宙船中，处处都潜伏着危机，玩家在探索的过程中除了要对付各种各样的敌人外，还有大量的解谜装置。 本作将对应Xbox Live提供最多8人的在线对战，分死亡竞赛和团队死亡竞赛两种模式。", "FPS", "联机游戏");
        Product p3 = new Product("Dark Soul2", 268, 290, "《黑暗之魂2》是一款聪明的，活动区域广阔并且非常值得游玩的挑战佳作。", "img/h4-slide3.jpg", "img/h4-slide33.jpg", "3", "─赢得gamescom 2015 Best RPG 奖项，以及于2015 E3展获得超过35项奖项及提名─DARK SOULS™ III为即将推出，极具话题性及代表性的系列新作。当火渐熄，世界趋于毁灭，您将再踏上面临更多磨难、大量敌人与难关的旅途。玩家将沉浸在史诗氛围的世界之中，感受更快速的游玩节奏与棘手的战斗强度带来的黑暗气息。不论新手或是老玩家，都将因著名的游戏体验、实境般的游戏画面为之着迷。如今仅剩余火尚存……作好准备，再次拥抱黑暗！", "RPG", "黑暗奇幻,角色扮演,受死传火");
        Product p4 = new Product("Shio", 78, 122, "「汐」是一款平台动作游戏,难度极高、体验爽快,但它对于我们的意义并不仅限于此。", "img/h4-slide4.jpg", "img/h4-slide44.jpg", "4", " 「汐」的故事发生在一个古老的村落。在这里，高屋丛丛刺向云霄，好似已生长千年，形如鬼魅的灯笼虚无缥缈，历经沧海桑田，还有无尽的深渊和致命的障碍躲藏在暗处，无人知晓它们缘何而来。所有的元素被不知名的力量所连接，便成为了骇人的“关卡”，“关卡”就是主角的日常，无论日出日落，从不停歇。 当你在现实中吃喝劳作、醒来睡去，虚拟世界中，他和他的村落日复一日，运转不息。 直到有一天，你出现在他的世界，一切的变化就从此开始…… ","ACT", "关卡,主题机关,东方建筑");
        list.Add(p1);     
        list.Add(p2);
        list.Add(p3);
        list.Add(p4);
        return list;
    }

    public static Product GetProductById(string id)
    {
        List<Product> list = ProductsFactory.GetProductsList();
        Product r = new Product();
        foreach (var p in list)
        {
        if(p.Id.Equals(id))
            {
                return p;
            }
        }
        return r;
    }





    public ProductsFactory()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
}