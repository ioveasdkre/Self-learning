package _5_Use_categories_and_objects;

// extends 是繼承某個類, 繼承之後可以使用父類的方法, 也可以重寫父類的方法
public class _1_3_4_Rectangle1 extends _1_3_4_Shape1
{
    public double width;
    public double height;

    // psvm + Tab 執行方法
    public _1_3_4_Rectangle1(double width, double height)
    {
        this.width = width;
        this.height = height;
    }
    public double area()
    {
        return width * height;
    }
}