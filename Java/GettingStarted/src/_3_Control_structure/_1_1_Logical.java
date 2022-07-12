package _3_Control_structure;
public class _1_1_Logical
{
    // psvm + Tab 執行方法
    public static void main(String[] args) {
        if(3 > 5)
        {
            // sout + Tab 打印
            System.out.println("不為假(not false)時成立(true)");
        }
        if(3 < 5)
        {
            System.out.println("5大於3成立");
        }
        if(5 == 5)
        {
            System.out.println("5等於5成立");
        }
        if(3 > 5 || 5 > 3)
        {
            System.out.println("只要(3 > 5)或(5 > 3)有一個成立就會成立(true)");
        }
        if(3 != 5)
        {
            System.out.println("3 != 5稱作 3不等於 5為true");
        }
        if(3 > 5 && 5 > 3)
        {
            System.out.println("哈");
        }
        else
        {
            System.out.println("(3 > 5)和(5 > 3)要兩者都成立才會成立");
        }
    }
}