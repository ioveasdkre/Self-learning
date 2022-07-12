package _3_Control_structure;
public class _1_0_Control
{
    // psvm + Tab 執行方法
    public static void main(String[] args)
    {
        String a = "大家好";
        String b = "您好";
        // sout + Tab 打印
        System.out.println(a + b);

        int c = 3;
        if(c > 5)
        {
            System.out.println("c大於5");
        }

        else
        {
            System.out.println("c小於5");
        }

        for (int i = 5; i < 8; i++)
        {
            System.out.println("顯示變數 i的值: " + i);
        }
    }
}