package _7_Object_oriented_design;

public class _1_5_AnimalOverriding
{
    // 私人
    private String Type;
    public _1_5_AnimalOverriding(String animaltype)
    {
        Type = new String(animaltype);
    }

    public String toString()
    {
        return "這是一隻" + Type;
    }
}