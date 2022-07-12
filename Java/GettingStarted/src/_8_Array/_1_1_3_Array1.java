package _8_Array;

import java.util.Scanner;

public class _1_1_3_Array1
{
    // psvm + Tab 執行方法
    public static void main(String[] args)
    {
        final int TOTAL = 8;
        int[] numbers = new int[TOTAL];
        // Scanner 取得使用者輸入
        // 標準輸入流(standard input stream)，就是 System.in，那就用他來初始化我們的 Scanner物件吧。
        Scanner scan = new Scanner(System.in);

        for(int i = 0; i < numbers.length; i++)
        {
            // sout + Tab 打印
            System.out.println("請輸入一個整數");
            // 此 scanner執行當前行，並回傳跳過的輸入 int信息。
            numbers[i] = scan.nextInt();
        }

        int min = numbers[0];
        for(int i = 0; i < numbers.length; i++)
        {
            if(min > numbers[i])
            {
                min = numbers[i];
            }
        }

        String output = "陣列 numbers的元素是";
        for(int i = 0; i < numbers.length; i++)
        {
            output = output + numbers[i] + " ";
        }
        System.out.println(output);
        System.out.println("陣列元素最小的值是 " + min);
    }
}