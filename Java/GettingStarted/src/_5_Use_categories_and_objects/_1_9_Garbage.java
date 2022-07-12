package _5_Use_categories_and_objects;

public class _1_9_Garbage
{
    // psvm + Tab 執行方法
    public static void main(String[] args)
    {
        if(true)
        {
            String str1 = new String("大家好");
            // sout + Tab 打印
            System.out.println(str1);
        }

        String str2 = new String("大家好");
        str2 = null;
        System.out.println(str2);
    }
}