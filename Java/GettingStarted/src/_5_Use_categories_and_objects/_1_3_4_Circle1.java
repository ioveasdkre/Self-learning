package _5_Use_categories_and_objects;

// extends 是繼承某個類, 繼承之後可以使用父類的方法, 也可以重寫父類的方法
public class _1_3_4_Circle1 extends _1_3_4_Shape1
{
    public double r;
    public _1_3_4_Circle1(double r)
    {
        this.r = r;
    }

    public double area()
    {
        // Math數學套件
        // PI圓周率
        return r * r * Math.PI;
    }
}