package _6_class_and_package;

public class _1_4_Overloading
{
    // psvm + Tab 執行方法
    public static void main(String[] args)
    {
        _1_4_Overloading ov = new _1_4_Overloading();
        ov.max(1.5, 2.222);
        ov.max(3, 2);
    }

    public static void max(double a, double b)
    {
        if(a > b)
        {
            // sout + Tab 打印
            System.out.println("這是浮點數" + a);
        }

        else
        {
            System.out.println("這是浮點數" + b);
        }
    }

    public static void max(int a, int b)
    {
        if(a > b)
        {
            // sout + Tab 打印
            System.out.println("這是整數" + a);
        }

        else
        {
            System.out.println("這是整數" + b);
        }
    }
}