package _4_function;
public class _1_0_SquareArea
{
    // psvm + Tab 執行方法
    public static void main(String[] args) {
        double i = area(5);
        // sout + Tab 打印
        System.out.println("正方形的面積: " + i);
    }

    public static double area(double a)
    {
        double result;
        result = a * a;
        return result;
    }
}