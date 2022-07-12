package _3_Control_structure;

public class _1_6_BreakJava
{
    // psvm + Tab 執行方法
    public static void main(String[] args)
    {
        int i = 0;
        outer:
        while (true)
        {
            i++;
            inner:
            switch (i)
            {
                case 1:
                    // sout + Tab 打印
                    System.out.println("At1");
                    break outer;
                case 2:
                    System.out.println("At2");
                    break inner;
                default:
                    break;
            }
        }

        i = 0;
        outer1:
        while (true)
        {
            i++;
            inner1:
            switch (i)
            {
                case 5:
                    System.out.println("At5");
                    break inner1;
                case 6:
                    System.out.println("At10");
                    break outer1;
                default:
                    break;
            }
        }

        // 當執行 for或 while迴圈時遇到 continue標籤就會跳回標籤進入地方(意旨：迴圈開始的地方)
        // inner or outer 就會跳到標籤的地方
    }
}