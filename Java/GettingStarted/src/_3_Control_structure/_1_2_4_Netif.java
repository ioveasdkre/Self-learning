package _3_Control_structure;

// 載入套件
import java.util.Scanner;

public class _1_2_4_Netif
{
    // psvm + Tab 執行方法
    public static void main(String[] args)
    {
        // Scanner 取得使用者輸入
        // 標準輸入流(standard input stream)，就是 System.in，那就用他來初始化我們的 Scanner物件吧。
        Scanner myObj = new Scanner(System.in);
        System.out.println("請輸入數字，多重選擇");
        // 此 scanner執行當前行，並返回跳過的輸入信息。此方法返回當前行的其餘部分，不包括任何行分隔符結尾
        String score = myObj.nextLine();
        // 字串轉換為 十進位整數型態
        int score1 = Integer.parseInt(score);

        if(score1 > 90)
        {
            // sout + Tab 打印
            System.out.println("A級");
        }
        else if(score1 > 80 && score1 <= 89)
        {
            System.out.println("B級");
        }
        else if(score1 > 70 && score1 <= 79)
        {
            System.out.println("C級");
        }
        else if(score1 > 60 && score1 <= 69)
        {
            System.out.println("D級");
        }
        else
        {
            System.out.println("E級");
        }
    }
}