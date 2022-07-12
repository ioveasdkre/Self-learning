package _4_function;

// 載入套件
import java.util.Scanner;

public class _1_4_Calculate
{
    // psvm + Tab 執行方法
    public static void main(String[] args) {
        double pay, n, yr_rate;
        // Scanner 取得使用者輸入
        // 標準輸入流(standard input stream)，就是 System.in，那就用他來初始化我們的 Scanner物件吧。
        Scanner scan = new Scanner(System.in);
        // sout + Tab 打印
        System.out.println("定期存款, 複利法計算本利合");
        System.out.println("請輸入本金:");
        // 此 scanner執行當前行，並返回跳過的輸入 Double信息。
        pay = scan.nextDouble();
        System.out.println("請輸入年利率:");
        yr_rate = scan.nextDouble();
        System.out.println("請輸入幾年後:");
        n = scan.nextDouble();
        System.out.println("本利合:" + finance(pay, n, yr_rate));
    }

    public static double finance(double pay, double n, double yr_rate)
    {
        for(int i = 1; i <= n; i++)
        {
            pay = pay * (1 + yr_rate / 100);
        }

        return pay;
    }
}