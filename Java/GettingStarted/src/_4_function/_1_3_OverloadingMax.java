package _4_function;
public class _1_3_OverloadingMax
{
    // psvm + Tab 執行方法
    public static void main(String[] args) {
        // sout + Tab 打印
        System.out.println("最大值: " + max(5, 1));
        System.out.println("最大值: " + max(5.2, 1.3));
        System.out.println("最大值: " + max(0.5, 1, 2.5));
    }

    public static double max(double a, double b)
    {
        if(a > b)
        {
            return a;
        }

        else
        {
            return b;
        }
    }

    public static int max(int a, int b)
    {
        if(a > b)
        {
            return a;
        }

        else
        {
            return b;
        }
    }

    public static double max(double a, double b, double c)
    {
        return (max(max(a, b), c));
    }

    // 相同名稱的函數，但是他們所帶入的參數不相同，Java編譯器將以函數的簽名來決定使用哪個函數，這就是方法的過載 method overloading
}