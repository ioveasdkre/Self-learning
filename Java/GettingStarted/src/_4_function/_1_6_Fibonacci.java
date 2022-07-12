package _4_function;

// 載入套件
import java.util.Scanner;

public class _1_6_Fibonacci
{
    // psvm + Tab 執行方法
    public static void main(String[] args) {
        double m, n;
        // Scanner 取得使用者輸入
        // 標準輸入流(standard input stream)，就是 System.in，那就用他來初始化我們的 Scanner物件吧。
        Scanner scan = new Scanner(System.in);
        // sout + Tab 打印
        System.out.println("費氏係數運算");
        System.out.println("請輸入整數 n:");
        // 此 scanner執行當前行，並返回跳過的輸入 Double信息。
        n = scan.nextDouble();
        System.out.println(n + "的費氏係數是: " + fib(n));
    }

    public static double fib(double n)
    {
        double ans;
        if(n == 0)
        {
            ans = 0;
        }

        else if(n == 1)
        {
            ans = 1;
        }
        else
        {
            ans = fib(n-1) + fib(n-2);
        }

        return ans;
    }
}