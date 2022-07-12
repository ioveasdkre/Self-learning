package _4_function;
public class _1_2_ByValue
{
    // psvm + Tab 執行方法
    public static void main(String[] args) {
        double a = 3;
        double b = 4;
        double c = 5;
        abc(a, b, c);
        // sout + Tab 打印
        System.out.println("a: " + a);
        System.out.println("b: " + b);
        System.out.println("c: " + c);
    }

    public static void abc(double a, double b, double c)
    {
        a++;
        b++;
        c++;
    }
}