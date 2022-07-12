package _3_Control_structure;

// 載入套件
import java.util.Scanner;

public class _1_3_SwitchJava
{
    // psvm + Tab 執行方法
    public static void main(String[] args)
    {
        // Scanner 取得使用者輸入
        // 標準輸入流(standard input stream)，就是 System.in，那就用他來初始化我們的 Scanner物件吧。
        Scanner myObj = new Scanner(System.in);
        System.out.println("請輸入數字1~6");
        // 此 scanner執行當前行，並返回跳過的輸入整數信息。
        int score = myObj.nextInt();

        switch(score)
        {
            case 1:
            case 2:
                // sout + Tab 打印
                System.out.println("小寶 case1和 case2");
                break;
            case 3:
            case 4:
            case 5:
                System.out.println("小文 case3和 case4和 case5");
                break;
            case 6:
                System.out.println("大寶 case6");
                break;
            default:
                System.out.println("請輸入其他數字");
        }
    }
}