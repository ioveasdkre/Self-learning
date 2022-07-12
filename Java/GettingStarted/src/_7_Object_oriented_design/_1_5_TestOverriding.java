package _7_Object_oriented_design;

public class _1_5_TestOverriding
{
    // psvm + Tab 執行方法
    public static void main(String[] args)
    {
        _1_5_DogOverriding littledog1 = new _1_5_DogOverriding("小黃");
        _1_5_DogOverriding littledog2 = new _1_5_DogOverriding("小黑", "台灣土狗");
        // sout + Tab 打印
        System.out.println(littledog1);
        System.out.println(littledog2);
    }
}