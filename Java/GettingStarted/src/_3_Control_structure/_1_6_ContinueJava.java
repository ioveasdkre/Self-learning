package _3_Control_structure;
public class _1_6_ContinueJava
{
    // psvm + Tab 執行方法
    public static void main(String[] args) {
        int i = 0;
        outer:
        while (i++ < 2)
        {
            // sout + Tab 打印
            System.out.println("外面");
            while (true)
            {
                System.out.println("中間");
                while (true)
                {
                    System.out.println("裡面");
                    continue outer;
                }
            }
        }
    }
}