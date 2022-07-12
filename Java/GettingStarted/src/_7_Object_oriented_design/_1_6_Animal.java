package _7_Object_oriented_design;

// abstract 抽象類別，不可宣告被宣告 private，而且 private函數不能被子類別重新定義
public abstract class _1_6_Animal
{
    // 私人
    private String type;
    public abstract void sound();
    public _1_6_Animal(String aType)
    {
        type = new String(aType);
    }

    public String toString()
    {
        return "這是一隻" + type;
    }
}