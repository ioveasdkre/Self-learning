package _5_Use_categories_and_objects;

// extends 是繼承某個類, 繼承之後可以使用父類的方法, 也可以重寫父類的方法
public class _1_3_4_Triangle1 extends _1_3_4_Shape1
{
    public double height;
    public double bottom;

    // psvm + Tab 執行方法
    public _1_3_4_Triangle1(double height, double bottom)
    {
        this.height = height;
        this.bottom = bottom;
    }
    public double area()
    {
        return (height * bottom / 2);
    }
}