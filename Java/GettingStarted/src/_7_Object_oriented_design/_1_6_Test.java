package _7_Object_oriented_design;

public class _1_6_Test
{
    // psvm + Tab 執行方法
    public static void main(String[] args)
    {
        _1_6_Dog littledog1 = new _1_6_Dog("小黃");
        _1_6_Dog littledog2 = new _1_6_Dog("小黑");
        // sout + Tab 打印
        System.out.println(littledog1);
        littledog1.sound();
        System.out.println(littledog2);
        littledog1.sound();
    }
}