package _4_function;

import java.util.Scanner;

public class _1_6_1_Hanoi
{
    // psvm + Tab 執行方法
    public static void main(String[] args) {
        int n;
        // Scanner 取得使用者輸入
        // 標準輸入流(standard input stream)，就是 System.in，那就用他來初始化我們的 Scanner物件吧。
        Scanner scan = new Scanner(System.in);
        // sout + Tab 打印
        System.out.println("河內塔移動盤子問題");
        System.out.println("請數入盤子個數(整數 n)");
        // 此 scanner執行當前行，並返回跳過的輸入 Double信息。
        n = scan.nextInt();
        System.out.println("請在河內塔移動過程: ");
        move(n, 'A', 'B', 'C');
    }

    public static void move(int n, char from, char to, char aux)
    {
        if(n == 1)
        {
            System.out.println("移動盤子 " + n + "從 " + from + "塔到 " + to + "塔");
        }

        else
        {
            move(n-1, from, aux, to);
            // 規律的中間
            System.out.println("移動盤子 " + n + "從 " + from + "塔到 " + to + "塔");
            move(n-1, aux, to, from);
        }
    }
}