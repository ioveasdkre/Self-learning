package _4_function;

// 載入套件
import java.util.Scanner;

public class _1_6_Multiply
{
    // psvm + Tab 執行方法
    public static void main(String[] args) {
        double m, n;
        // Scanner 取得使用者輸入
        // 標準輸入流(standard input stream)，就是 System.in，那就用他來初始化我們的 Scanner物件吧。
        Scanner scan = new Scanner(System.in);
        // sout + Tab 打印
        System.out.println("m * n乘法運算");
        System.out.println("請輸入 m:");
        // 此 scanner執行當前行，並返回跳過的輸入 Double信息。
        m = scan.nextDouble();
        System.out.println("請輸入 整數n:");
        n = scan.nextDouble();
        System.out.println("m * n = " + multiply(m, n));
    }

    public static double multiply(double m, double n)
    {
        double ans;
        if(n == 1)
        {
            ans = m;
        }

        else
        {
            ans = m + multiply(m, n-1);
        }

        return ans;
    }


}