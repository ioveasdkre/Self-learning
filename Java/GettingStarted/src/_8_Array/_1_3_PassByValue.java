package _8_Array;

public class _1_3_PassByValue
{
    // psvm + Tab 執行方法
    public static void main(String[] args) {
        int a = 5;
        int[] b = new int[6];
        b[0] = 899;
        im(a, b);
        // sout + Tab 打印
        System.out.println("a的值是 " + a);
        System.out.println("b[0]的值是 " + b[0]);

    }

    public static void im(int number1, int[] number2)
    {
        number1 = 8;
        number2[0] = 9;
    }
}