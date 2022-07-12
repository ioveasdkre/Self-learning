package _7_Object_oriented_design;

public class _1_5_DogOverriding extends _1_5_AnimalOverriding
{
    // 私人
    private String name;
    private String breed;
    public _1_5_DogOverriding(String dogname)
    {
        // 存取 父類別的成員（資料成員、函數成員、建構元）
        super("Dog_overriding");
        name = dogname;
        breed = "不知道品種";
    }

    public _1_5_DogOverriding(String dogname, String dogbreed)
    {
        super("Dog");
        name = dogname;
        breed = dogbreed;
    }

    public String toString()
    {
        return "這是一隻" + breed + ", 它的名字是" + name;
    }
}