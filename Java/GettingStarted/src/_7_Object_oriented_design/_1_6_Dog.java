package _7_Object_oriented_design;

// extends 擴充(繼承)
// implements 介面
public class _1_6_Dog extends _1_6_Animal implements _1_6_PetOutput
{
    // 私人的
    private String name;
    public _1_6_Dog(String aName)
    {
        // 存取 父類別的成員（資料成員、函數成員、建構元）
        super("Dog");
        name = aName;
    }

    public String toString()
    {
        return "這是一隻" + name;
    }

    public void sound()
    {
        // sout + Tab 打印
        System.out.println("旺旺");
    }


    public void drink()
    {
        System.out.println("drink");
    }

    public void eat()
    {
        System.out.println("eat");
    }
}
