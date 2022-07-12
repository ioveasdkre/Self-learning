package _3_Control_structure;

// 載入套件

public class _1_4_2_WhileBreak
{
    // psvm + Tab 執行方法
    public static void main(String[] args)
    {
        int a = 20;
        while (a < 25)
        {
            if(a == 23)
            {
                break;
            }

            // sout + Tab 打印
            System.out.println("迴圈變數的a值: " + a);
            a++;
        }
    }
}